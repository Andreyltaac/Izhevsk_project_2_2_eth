`ifndef __PARAMETERS_VH__

  `define __PARAMETERS_VH__


parameter fftsize			= 1024;
parameter n_pilot			= 72;
parameter n_pream			= 502;
parameter cpsize			= 32; 
parameter n_sumb			= 103;
parameter step_pilot		= 13;

parameter file_map_symb			= "F:/work/Izhevsk_project_2_1/Izhevsk_project_2_1/FPGA/input_data/map_i.txt";
parameter file_map_pream		= "F:/work/Izhevsk_project_2_1/Izhevsk_project_2_1/FPGA/input_data/map_p_25mhz.txt";
parameter file_cor_pream		= "F:/work/Izhevsk_project_2_1/Izhevsk_project_2_1/FPGA/input_data/preamb_corr_25mhz.txt";


parameter file_pilot			= "F:/work/Izhevsk_project_2_1/Izhevsk_project_2_1/FPGA/input_data/pilot.txt";
parameter file_t_pream_i		= "F:/work/Izhevsk_project_2_1/Izhevsk_project_2_1/FPGA/input_data/preamb_i_bit.txt";
parameter file_t_pream_q		= "F:/work/Izhevsk_project_2_1/Izhevsk_project_2_1/FPGA/input_data/preamb_q_bit.txt";
parameter file_freq_1_pream_i	= "F:/work/Izhevsk_project_2_1/Izhevsk_project_2_1/FPGA/input_data/preamb_i.txt";
parameter file_freq_1_pream_q	= "F:/work/Izhevsk_project_2_1/Izhevsk_project_2_1/FPGA/input_data/preamb_i.txt";




// parameter file_pilot		    = "../My_Models/FPGA/input_data/pilot.txt";
// parameter file_map_symb			= "../My_Models/FPGA/input_data/map_i.txt";
// parameter file_map_pream		= "../My_Models/FPGA/input_data/map_p.txt";
// parameter file_t_pream_i		= "../My_Models/FPGA/input_data/preamb_i_bit.txt";
// parameter file_t_pream_q		= "../My_Models/FPGA/input_data/preamb_q_bit.txt";
// parameter file_freq_1_pream_i	= "../My_Models/FPGA/input_data/preamb_i.txt";
// parameter file_freq_1_pream_q	= "../My_Models/FPGA/input_data/preamb_i.txt";
// parameter file_cor_pream_i		= "../My_Models/FPGA/input_data/preamb_corr_i.txt";

`endif
