`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////


module CDC_SYNC_183
    #(
     parameter BURST_LENGTH_rel = 8'd191, //Длина очереди пакетов канала RELOAD  
     parameter DELAY_LENGTH_conf = 16'd200, //Величина задержки события CONFIG 
     parameter LENGTH_rst = 8'd5 //Величина задержки события RESET 
     )
     (
     input wire clk, //Клоки
     input wire IN_val, //Вход   
     input wire rst_ext, //Внешний сброс   
     
     output reg tlast = 0, //Окончание серии
     output reg OUT_val_rel = 0, //Сигнал валидации канала RELOAD  
     output reg OUT_val_conf = 0, //Сигнал валидации канала CONFIG   
     output reg rst_FIR = 1 //Сигнал сброса ядра FIR Compiler 
     );
    
reg first = 0;
reg second = 0;
reg third = 0;
reg add_reg = 0; // Дополнительный регистр

reg rst_all = 0; // Регистр сброса всех модулей
reg flag_0 = 0; // Регистр начала/конца операции перегрузки коэффициентов
reg flag_1 = 0; // Регистр успешного выполнения сброса
reg flag_2 = 0; // Регистр события TLAST
reg flag_3 = 0; // Регистр события CONFIG

reg [15:0] count_1 = 0; //Счетчик длительности пакетов
reg [15:0] count_2 = 0; //Счетчик задержки события CONFIG 
reg [7:0] count_3 = 0; //Счетчик длительности сброса  


//Пересинхронизация сигнала валидации  
always @(posedge clk)
begin
	 first <= IN_val;
	 second <= first;
	 third <= second;
	 add_reg <= ~third & second;
end
//Пересинхронизация сигнала валидации

//Задержка сигнала add_reg
always @(posedge clk)
begin
      if(add_reg) 
         OUT_val_rel <= 1;
    else OUT_val_rel <= 0;
end
//Задержка сигнала add_reg

//Модуль указателя начала/конца операции перегрузки коэффициентов
always @(posedge clk)
begin
      if(add_reg & flag_0 == 0)
         begin
           flag_0 <= 1;
         end
 else if(flag_3 & rst_all == 0)
         begin 
           flag_0 <= 0;
           rst_all <= 1;
         end
    else 
         begin
         rst_all <= 0;
         end
end
//Модуль указателя начала/конца операции перегрузки коэффициентов

//Сигнал сброса FIR Compiler.
always @(posedge clk)
begin
      if(rst_all | rst_ext) 
         begin
            count_3 <= 0;
            flag_1 <= 0;
         end
    else 
         begin
           if (flag_0 & count_3 <= LENGTH_rst) 
              begin 
                count_3 <= count_3 [6:0] + 1'b1;
                rst_FIR <= 0;
              end
           if (count_3 == LENGTH_rst) 
              begin
                rst_FIR <= 1;
                flag_1 <= 1;
              end
         end   
end
//Сигнал сброса FIR Compiler.

//Формирование команды TLAST
always @(posedge clk)
begin
      if(rst_all | rst_ext) 
         begin
            flag_2 <= 0;
         end
    else 
         begin
           if (add_reg & flag_1 & count_1 <= BURST_LENGTH_rel)
              begin
                count_1 <= count_1 [14:0] + 1'b1;
                if (count_1 == BURST_LENGTH_rel)
                    begin
                      count_1 <= 0;
                      tlast <= 1;
                      flag_2 <= 1;
                    end
              end      
           else 
               begin
                 tlast <= 0;
               end
         end
   
end      
//Формирование команды TLAST

//Формирование события CONFIG
always @(posedge clk)
begin
      if(rst_all | rst_ext) 
         begin
            flag_3 <= 0;
         end
    else 
         begin
           if (flag_2 & count_2 <= DELAY_LENGTH_conf)
             begin
               count_2 <= count_2 [14:0] + 1'b1;
               if (count_2 == DELAY_LENGTH_conf)
                   begin
                     OUT_val_conf <= 1;
                     count_2 <= 0;
                     flag_3 <= 1;  
                   end
             end
           else
              begin 
                OUT_val_conf <= 0;
              end  
          end
end
//Формирование события CONFIG

endmodule
