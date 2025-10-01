
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2019.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# mqc_t, FPGA_reset, ibuf, Decoder_SPI, on_off_wire, on_off_wire, RAshift16_4_up, RAshift16_4_up, RAshift16_4_up, RAshift16_4_up, RAshift16_4_up, RAshift16_4_up, RAshift16_4_up, RAshift16_4_up, RAshift16_4_up, RAshift16_4_up, RAshift16_4_up, RAshift16_4_up

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7k325tffg676-2
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: ad9361_clk
proc create_hier_cell_ad9361_clk { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_ad9361_clk() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir I -type clk FPGA_REF_40MHZ
  create_bd_pin -dir O -from 0 -to 0 -type clk clk_out
  create_bd_pin -dir O -from 0 -to 0 -type clk clk_out1
  create_bd_pin -dir I -type rst ext_reset_in
  create_bd_pin -dir O -from 0 -to 0 -type rst peripheral_aresetn
  create_bd_pin -dir O -from 0 -to 0 -type rst peripheral_aresetn1
  create_bd_pin -dir O -from 0 -to 0 -type rst peripheral_reset
  create_bd_pin -dir O -from 0 -to 0 -type clk sample_rate_30

  # Create instance: DATA_rst, and set properties
  set DATA_rst [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 DATA_rst ]
  set_property -dict [ list \
   CONFIG.C_AUX_RESET_HIGH {0} \
   CONFIG.C_AUX_RST_WIDTH {16} \
   CONFIG.C_EXT_RST_WIDTH {16} \
 ] $DATA_rst

  # Create instance: clk_DSP, and set properties
  set clk_DSP [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_DSP ]
  set_property -dict [ list \
   CONFIG.CLKIN1_JITTER_PS {250.0} \
   CONFIG.CLKOUT1_JITTER {271.412} \
   CONFIG.CLKOUT1_PHASE_ERROR {196.976} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {30.72} \
   CONFIG.CLKOUT2_JITTER {158.000} \
   CONFIG.CLKOUT2_PHASE_ERROR {196.976} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {100.000} \
   CONFIG.CLKOUT2_USED {false} \
   CONFIG.CLKOUT3_JITTER {158.000} \
   CONFIG.CLKOUT3_PHASE_ERROR {196.976} \
   CONFIG.CLKOUT3_REQUESTED_OUT_FREQ {100.000} \
   CONFIG.CLKOUT3_USED {false} \
   CONFIG.CLKOUT4_JITTER {247.096} \
   CONFIG.CLKOUT4_PHASE_ERROR {196.976} \
   CONFIG.CLKOUT4_REQUESTED_OUT_FREQ {100.000} \
   CONFIG.CLKOUT4_USED {false} \
   CONFIG.CLK_OUT1_PORT {sample_rate_30_72} \
   CONFIG.CLK_OUT2_PORT {clk_out2} \
   CONFIG.CLK_OUT3_PORT {clk_out3} \
   CONFIG.CLK_OUT4_PORT {clk_out4} \
   CONFIG.JITTER_SEL {No_Jitter} \
   CONFIG.MMCM_BANDWIDTH {OPTIMIZED} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {24.000} \
   CONFIG.MMCM_CLKIN1_PERIOD {25.000} \
   CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {31.250} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {1} \
   CONFIG.MMCM_CLKOUT2_DIVIDE {1} \
   CONFIG.MMCM_CLKOUT3_DIVIDE {1} \
   CONFIG.MMCM_DIVCLK_DIVIDE {1} \
   CONFIG.NUM_OUT_CLKS {1} \
   CONFIG.PRIM_IN_FREQ {40} \
   CONFIG.PRIM_SOURCE {No_buffer} \
   CONFIG.USE_LOCKED {true} \
   CONFIG.USE_RESET {false} \
 ] $clk_DSP

  # Create port connections
  connect_bd_net -net DATA_rst_peripheral_reset [get_bd_pins peripheral_reset] [get_bd_pins DATA_rst/peripheral_reset]
  connect_bd_net -net FPGA_REF_40MHZ_1 [get_bd_pins FPGA_REF_40MHZ] [get_bd_pins clk_DSP/clk_in1]
  connect_bd_net -net clk_DSP_data_rate [get_bd_pins clk_out] [get_bd_pins clk_out1] [get_bd_pins sample_rate_30] [get_bd_pins DATA_rst/slowest_sync_clk] [get_bd_pins clk_DSP/sample_rate_30_72]
  connect_bd_net -net clk_DSP_locked [get_bd_pins DATA_rst/dcm_locked] [get_bd_pins clk_DSP/locked]
  connect_bd_net -net divclk_61_rst_peripheral_aresetn [get_bd_pins peripheral_aresetn] [get_bd_pins peripheral_aresetn1] [get_bd_pins DATA_rst/peripheral_aresetn]
  connect_bd_net -net ext_reset_in_1 [get_bd_pins ext_reset_in] [get_bd_pins DATA_rst/ext_reset_in]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: AD9361_3
proc create_hier_cell_AD9361_3 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_AD9361_3() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi


  # Create pins
  create_bd_pin -dir O -from 5 -to 0 ad9361_3_P0_N
  create_bd_pin -dir O -from 5 -to 0 ad9361_3_P0_P
  create_bd_pin -dir I -from 5 -to 0 ad9361_3_P1_N
  create_bd_pin -dir I -from 5 -to 0 ad9361_3_P1_P
  create_bd_pin -dir I ad9361_DCLK_3_N
  create_bd_pin -dir I ad9361_DCLK_3_P
  create_bd_pin -dir O ad9361_EN_3
  create_bd_pin -dir O ad9361_FB_CLK_3_N
  create_bd_pin -dir O ad9361_FB_CLK_3_P
  create_bd_pin -dir I ad9361_RX_FRAME3_N
  create_bd_pin -dir I ad9361_RX_FRAME3_P
  create_bd_pin -dir O ad9361_TXNRX_3
  create_bd_pin -dir O ad9361_TX_FRAME3_N
  create_bd_pin -dir O ad9361_TX_FRAME3_P
  create_bd_pin -dir I -type clk delay_clk
  create_bd_pin -dir I -type clk din_clk
  create_bd_pin -dir I -from 15 -to 0 din_data_6
  create_bd_pin -dir I -from 15 -to 0 din_data_7
  create_bd_pin -dir I -from 15 -to 0 din_data_8
  create_bd_pin -dir I -from 15 -to 0 din_data_9
  create_bd_pin -dir I -type rst din_rstn
  create_bd_pin -dir O -from 15 -to 0 dout_data_8
  create_bd_pin -dir O -from 15 -to 0 dout_data_9
  create_bd_pin -dir O -from 15 -to 0 dout_data_10
  create_bd_pin -dir O -from 15 -to 0 dout_data_11
  create_bd_pin -dir I -type clk s_axi_aclk
  create_bd_pin -dir I -type rst s_axi_aresetn
  create_bd_pin -dir I up_enable
  create_bd_pin -dir I up_txnrx

  # Create instance: LOGIC_1, and set properties
  set LOGIC_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 LOGIC_1 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {1} \
 ] $LOGIC_1

  # Create instance: RAshift16_4_up_0, and set properties
  set block_name RAshift16_4_up
  set block_cell_name RAshift16_4_up_0
  if { [catch {set RAshift16_4_up_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $RAshift16_4_up_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: RAshift16_4_up_1, and set properties
  set block_name RAshift16_4_up
  set block_cell_name RAshift16_4_up_1
  if { [catch {set RAshift16_4_up_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $RAshift16_4_up_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: RAshift16_4_up_2, and set properties
  set block_name RAshift16_4_up
  set block_cell_name RAshift16_4_up_2
  if { [catch {set RAshift16_4_up_2 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $RAshift16_4_up_2 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: RAshift16_4_up_3, and set properties
  set block_name RAshift16_4_up
  set block_cell_name RAshift16_4_up_3
  if { [catch {set RAshift16_4_up_3 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $RAshift16_4_up_3 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: TDD_SYNC3, and set properties
  set TDD_SYNC3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 TDD_SYNC3 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $TDD_SYNC3

  # Create instance: adc_fifo_ad9361_3, and set properties
  set adc_fifo_ad9361_3 [ create_bd_cell -type ip -vlnv analog.com:user:util_wfifo:1.0 adc_fifo_ad9361_3 ]
  set_property -dict [ list \
   CONFIG.DIN_ADDRESS_WIDTH {4} \
   CONFIG.DIN_DATA_WIDTH {16} \
   CONFIG.DOUT_DATA_WIDTH {16} \
 ] $adc_fifo_ad9361_3

  # Create instance: axi_ad9361_3, and set properties
  set axi_ad9361_3 [ create_bd_cell -type ip -vlnv analog.com:user:axi_ad9361:1.0 axi_ad9361_3 ]
  set_property -dict [ list \
   CONFIG.ADC_DATAFORMAT_DISABLE {0} \
   CONFIG.ADC_DATAPATH_DISABLE {0} \
   CONFIG.ADC_DCFILTER_DISABLE {1} \
   CONFIG.ADC_INIT_DELAY {0} \
   CONFIG.ADC_IQCORRECTION_DISABLE {1} \
   CONFIG.ADC_USERPORTS_DISABLE {0} \
   CONFIG.CMOS_OR_LVDS_N {0} \
   CONFIG.DAC_DATAPATH_DISABLE {0} \
   CONFIG.DAC_DDS_DISABLE {1} \
   CONFIG.DAC_DDS_TYPE {1} \
   CONFIG.DAC_INIT_DELAY {0} \
   CONFIG.DAC_IQCORRECTION_DISABLE {1} \
   CONFIG.DAC_USERPORTS_DISABLE {0} \
   CONFIG.ID {0} \
   CONFIG.IO_DELAY_GROUP {dev_3_if_delay_group} \
   CONFIG.TDD_DISABLE {1} \
 ] $axi_ad9361_3

  # Create instance: dac_fifo_ad9361_3, and set properties
  set dac_fifo_ad9361_3 [ create_bd_cell -type ip -vlnv analog.com:user:util_rfifo:1.0 dac_fifo_ad9361_3 ]
  set_property -dict [ list \
   CONFIG.DIN_ADDRESS_WIDTH {4} \
   CONFIG.DIN_DATA_WIDTH {16} \
   CONFIG.DOUT_DATA_WIDTH {16} \
 ] $dac_fifo_ad9361_3

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins s_axi] [get_bd_intf_pins axi_ad9361_3/s_axi]

  # Create port connections
  connect_bd_net -net RAshift16_4_up_0_output_bus [get_bd_pins dout_data_10] [get_bd_pins RAshift16_4_up_0/output_bus]
  connect_bd_net -net RAshift16_4_up_1_output_bus [get_bd_pins dout_data_11] [get_bd_pins RAshift16_4_up_1/output_bus]
  connect_bd_net -net RAshift16_4_up_2_output_bus [get_bd_pins dout_data_8] [get_bd_pins RAshift16_4_up_2/output_bus]
  connect_bd_net -net RAshift16_4_up_3_output_bus [get_bd_pins dout_data_9] [get_bd_pins RAshift16_4_up_3/output_bus]
  connect_bd_net -net TDD_SYNC3_dout [get_bd_pins TDD_SYNC3/dout] [get_bd_pins axi_ad9361_3/tdd_sync]
  connect_bd_net -net TDD_SYNC4_dout [get_bd_pins LOGIC_1/dout] [get_bd_pins dac_fifo_ad9361_3/din_unf] [get_bd_pins dac_fifo_ad9361_3/din_valid_in_0] [get_bd_pins dac_fifo_ad9361_3/din_valid_in_1] [get_bd_pins dac_fifo_ad9361_3/din_valid_in_2] [get_bd_pins dac_fifo_ad9361_3/din_valid_in_3]
  connect_bd_net -net ad9361_3_P1_N_1 [get_bd_pins ad9361_3_P1_N] [get_bd_pins axi_ad9361_3/rx_data_in_n]
  connect_bd_net -net ad9361_3_P1_P_1 [get_bd_pins ad9361_3_P1_P] [get_bd_pins axi_ad9361_3/rx_data_in_p]
  connect_bd_net -net ad9361_DCLK_3_N_1 [get_bd_pins ad9361_DCLK_3_N] [get_bd_pins axi_ad9361_3/rx_clk_in_n]
  connect_bd_net -net ad9361_DCLK_3_P_1 [get_bd_pins ad9361_DCLK_3_P] [get_bd_pins axi_ad9361_3/rx_clk_in_p]
  connect_bd_net -net ad9361_RX_FRAME3_N_1 [get_bd_pins ad9361_RX_FRAME3_N] [get_bd_pins axi_ad9361_3/rx_frame_in_n]
  connect_bd_net -net ad9361_RX_FRAME3_P_1 [get_bd_pins ad9361_RX_FRAME3_P] [get_bd_pins axi_ad9361_3/rx_frame_in_p]
  connect_bd_net -net adc_fifo_ad9361_3_dout_data_0 [get_bd_pins RAshift16_4_up_0/input_bus] [get_bd_pins adc_fifo_ad9361_3/dout_data_0]
  connect_bd_net -net adc_fifo_ad9361_3_dout_data_1 [get_bd_pins RAshift16_4_up_1/input_bus] [get_bd_pins adc_fifo_ad9361_3/dout_data_1]
  connect_bd_net -net adc_fifo_ad9361_3_dout_data_2 [get_bd_pins RAshift16_4_up_2/input_bus] [get_bd_pins adc_fifo_ad9361_3/dout_data_2]
  connect_bd_net -net adc_fifo_ad9361_3_dout_data_3 [get_bd_pins RAshift16_4_up_3/input_bus] [get_bd_pins adc_fifo_ad9361_3/dout_data_3]
  connect_bd_net -net axi_ad9361_3_adc_data_i0 [get_bd_pins adc_fifo_ad9361_3/din_data_0] [get_bd_pins axi_ad9361_3/adc_data_i0]
  connect_bd_net -net axi_ad9361_3_adc_data_i1 [get_bd_pins adc_fifo_ad9361_3/din_data_2] [get_bd_pins axi_ad9361_3/adc_data_i1]
  connect_bd_net -net axi_ad9361_3_adc_data_q0 [get_bd_pins adc_fifo_ad9361_3/din_data_1] [get_bd_pins axi_ad9361_3/adc_data_q0]
  connect_bd_net -net axi_ad9361_3_adc_data_q1 [get_bd_pins adc_fifo_ad9361_3/din_data_3] [get_bd_pins axi_ad9361_3/adc_data_q1]
  connect_bd_net -net axi_ad9361_3_adc_enable_i0 [get_bd_pins adc_fifo_ad9361_3/din_enable_0] [get_bd_pins axi_ad9361_3/adc_enable_i0]
  connect_bd_net -net axi_ad9361_3_adc_enable_i1 [get_bd_pins adc_fifo_ad9361_3/din_enable_2] [get_bd_pins axi_ad9361_3/adc_enable_i1]
  connect_bd_net -net axi_ad9361_3_adc_enable_q0 [get_bd_pins adc_fifo_ad9361_3/din_enable_1] [get_bd_pins axi_ad9361_3/adc_enable_q0]
  connect_bd_net -net axi_ad9361_3_adc_enable_q1 [get_bd_pins adc_fifo_ad9361_3/din_enable_3] [get_bd_pins axi_ad9361_3/adc_enable_q1]
  connect_bd_net -net axi_ad9361_3_adc_valid_i0 [get_bd_pins adc_fifo_ad9361_3/din_valid_0] [get_bd_pins axi_ad9361_3/adc_valid_i0]
  connect_bd_net -net axi_ad9361_3_adc_valid_i1 [get_bd_pins adc_fifo_ad9361_3/din_valid_2] [get_bd_pins axi_ad9361_3/adc_valid_i1]
  connect_bd_net -net axi_ad9361_3_adc_valid_q0 [get_bd_pins adc_fifo_ad9361_3/din_valid_1] [get_bd_pins axi_ad9361_3/adc_valid_q0]
  connect_bd_net -net axi_ad9361_3_adc_valid_q1 [get_bd_pins adc_fifo_ad9361_3/din_valid_3] [get_bd_pins axi_ad9361_3/adc_valid_q1]
  connect_bd_net -net axi_ad9361_3_dac_enable_i0 [get_bd_pins axi_ad9361_3/dac_enable_i0] [get_bd_pins dac_fifo_ad9361_3/dout_enable_0]
  connect_bd_net -net axi_ad9361_3_dac_enable_i1 [get_bd_pins axi_ad9361_3/dac_enable_i1] [get_bd_pins dac_fifo_ad9361_3/dout_enable_2]
  connect_bd_net -net axi_ad9361_3_dac_enable_q0 [get_bd_pins axi_ad9361_3/dac_enable_q0] [get_bd_pins dac_fifo_ad9361_3/dout_enable_1]
  connect_bd_net -net axi_ad9361_3_dac_enable_q1 [get_bd_pins axi_ad9361_3/dac_enable_q1] [get_bd_pins dac_fifo_ad9361_3/dout_enable_3]
  connect_bd_net -net axi_ad9361_3_dac_sync_out [get_bd_pins axi_ad9361_3/dac_sync_in] [get_bd_pins axi_ad9361_3/dac_sync_out]
  connect_bd_net -net axi_ad9361_3_dac_valid_i0 [get_bd_pins axi_ad9361_3/dac_valid_i0] [get_bd_pins dac_fifo_ad9361_3/dout_valid_0]
  connect_bd_net -net axi_ad9361_3_dac_valid_i1 [get_bd_pins axi_ad9361_3/dac_valid_i1] [get_bd_pins dac_fifo_ad9361_3/dout_valid_2]
  connect_bd_net -net axi_ad9361_3_dac_valid_q0 [get_bd_pins axi_ad9361_3/dac_valid_q0] [get_bd_pins dac_fifo_ad9361_3/dout_valid_1]
  connect_bd_net -net axi_ad9361_3_dac_valid_q1 [get_bd_pins axi_ad9361_3/dac_valid_q1] [get_bd_pins dac_fifo_ad9361_3/dout_valid_3]
  connect_bd_net -net axi_ad9361_3_enable [get_bd_pins ad9361_EN_3] [get_bd_pins axi_ad9361_3/enable]
  connect_bd_net -net axi_ad9361_3_tx_clk_out_n [get_bd_pins ad9361_FB_CLK_3_N] [get_bd_pins axi_ad9361_3/tx_clk_out_n]
  connect_bd_net -net axi_ad9361_3_tx_clk_out_p [get_bd_pins ad9361_FB_CLK_3_P] [get_bd_pins axi_ad9361_3/tx_clk_out_p]
  connect_bd_net -net axi_ad9361_3_tx_data_out_n [get_bd_pins ad9361_3_P0_N] [get_bd_pins axi_ad9361_3/tx_data_out_n]
  connect_bd_net -net axi_ad9361_3_tx_data_out_p [get_bd_pins ad9361_3_P0_P] [get_bd_pins axi_ad9361_3/tx_data_out_p]
  connect_bd_net -net axi_ad9361_3_tx_frame_out_n [get_bd_pins ad9361_TX_FRAME3_N] [get_bd_pins axi_ad9361_3/tx_frame_out_n]
  connect_bd_net -net axi_ad9361_3_tx_frame_out_p [get_bd_pins ad9361_TX_FRAME3_P] [get_bd_pins axi_ad9361_3/tx_frame_out_p]
  connect_bd_net -net axi_ad9361_3_txnrx [get_bd_pins ad9361_TXNRX_3] [get_bd_pins axi_ad9361_3/txnrx]
  connect_bd_net -net dac_fifo_ad9361_2_dout_data_0 [get_bd_pins axi_ad9361_3/dac_data_i0] [get_bd_pins dac_fifo_ad9361_3/dout_data_0]
  connect_bd_net -net dac_fifo_ad9361_2_dout_data_1 [get_bd_pins axi_ad9361_3/dac_data_q0] [get_bd_pins dac_fifo_ad9361_3/dout_data_1]
  connect_bd_net -net dac_fifo_ad9361_2_dout_data_2 [get_bd_pins axi_ad9361_3/dac_data_i1] [get_bd_pins dac_fifo_ad9361_3/dout_data_2]
  connect_bd_net -net dac_fifo_ad9361_2_dout_data_3 [get_bd_pins axi_ad9361_3/dac_data_q1] [get_bd_pins dac_fifo_ad9361_3/dout_data_3]
  connect_bd_net -net delay_clk_1 [get_bd_pins delay_clk] [get_bd_pins axi_ad9361_3/delay_clk]
  connect_bd_net -net din_clk_1 [get_bd_pins din_clk] [get_bd_pins adc_fifo_ad9361_3/dout_clk] [get_bd_pins dac_fifo_ad9361_3/din_clk]
  connect_bd_net -net din_data_6_1 [get_bd_pins din_data_6] [get_bd_pins dac_fifo_ad9361_3/din_data_2]
  connect_bd_net -net din_data_7_1 [get_bd_pins din_data_7] [get_bd_pins dac_fifo_ad9361_3/din_data_3]
  connect_bd_net -net din_data_8_1 [get_bd_pins din_data_8] [get_bd_pins dac_fifo_ad9361_3/din_data_0]
  connect_bd_net -net din_data_9_1 [get_bd_pins din_data_9] [get_bd_pins dac_fifo_ad9361_3/din_data_1]
  connect_bd_net -net din_rstn_1 [get_bd_pins din_rstn] [get_bd_pins adc_fifo_ad9361_3/dout_rstn] [get_bd_pins dac_fifo_ad9361_3/din_rstn]
  connect_bd_net -net dout_clk_1 [get_bd_pins adc_fifo_ad9361_3/din_clk] [get_bd_pins axi_ad9361_3/clk] [get_bd_pins axi_ad9361_3/l_clk] [get_bd_pins dac_fifo_ad9361_3/dout_clk]
  connect_bd_net -net dout_rst_1 [get_bd_pins adc_fifo_ad9361_3/din_rst] [get_bd_pins axi_ad9361_3/rst] [get_bd_pins dac_fifo_ad9361_3/dout_rst]
  connect_bd_net -net s_axi_aclk_1 [get_bd_pins s_axi_aclk] [get_bd_pins axi_ad9361_3/s_axi_aclk]
  connect_bd_net -net s_axi_aresetn_1 [get_bd_pins s_axi_aresetn] [get_bd_pins axi_ad9361_3/s_axi_aresetn]
  connect_bd_net -net up_enable_1 [get_bd_pins up_enable] [get_bd_pins axi_ad9361_3/up_enable]
  connect_bd_net -net up_txnrx_1 [get_bd_pins up_txnrx] [get_bd_pins axi_ad9361_3/up_txnrx]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: AD9361_2
proc create_hier_cell_AD9361_2 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_AD9361_2() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi


  # Create pins
  create_bd_pin -dir O -from 5 -to 0 ad9361_2_P0_N
  create_bd_pin -dir O -from 5 -to 0 ad9361_2_P0_P
  create_bd_pin -dir I -from 5 -to 0 ad9361_2_P1_N
  create_bd_pin -dir I -from 5 -to 0 ad9361_2_P1_P
  create_bd_pin -dir I ad9361_DCLK_2_N
  create_bd_pin -dir I ad9361_DCLK_2_P
  create_bd_pin -dir O ad9361_EN_2
  create_bd_pin -dir O ad9361_FB_CLK_2_N
  create_bd_pin -dir O ad9361_FB_CLK_2_P
  create_bd_pin -dir I ad9361_RX_FRAME2_N
  create_bd_pin -dir I ad9361_RX_FRAME2_P
  create_bd_pin -dir O ad9361_TXNRX_2
  create_bd_pin -dir O ad9361_TX_FRAME2_N
  create_bd_pin -dir O ad9361_TX_FRAME2_P
  create_bd_pin -dir O adc_valid_i0
  create_bd_pin -dir I -type clk delay_clk
  create_bd_pin -dir I -type clk din_clk
  create_bd_pin -dir I -from 15 -to 0 din_data_0
  create_bd_pin -dir I -from 15 -to 0 din_data_1
  create_bd_pin -dir I -from 15 -to 0 din_data_4
  create_bd_pin -dir I -from 15 -to 0 din_data_5
  create_bd_pin -dir I -type rst din_rstn
  create_bd_pin -dir O -from 15 -to 0 dout_data_4
  create_bd_pin -dir O -from 15 -to 0 dout_data_5
  create_bd_pin -dir O -from 15 -to 0 dout_data_6
  create_bd_pin -dir O -from 15 -to 0 dout_data_7
  create_bd_pin -dir I -type clk s_axi_aclk
  create_bd_pin -dir I -type rst s_axi_aresetn
  create_bd_pin -dir I up_enable
  create_bd_pin -dir I up_txnrx

  # Create instance: LOGIC_1, and set properties
  set LOGIC_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 LOGIC_1 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {1} \
 ] $LOGIC_1

  # Create instance: RAshift16_4_up_0, and set properties
  set block_name RAshift16_4_up
  set block_cell_name RAshift16_4_up_0
  if { [catch {set RAshift16_4_up_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $RAshift16_4_up_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: RAshift16_4_up_1, and set properties
  set block_name RAshift16_4_up
  set block_cell_name RAshift16_4_up_1
  if { [catch {set RAshift16_4_up_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $RAshift16_4_up_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: RAshift16_4_up_2, and set properties
  set block_name RAshift16_4_up
  set block_cell_name RAshift16_4_up_2
  if { [catch {set RAshift16_4_up_2 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $RAshift16_4_up_2 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: RAshift16_4_up_3, and set properties
  set block_name RAshift16_4_up
  set block_cell_name RAshift16_4_up_3
  if { [catch {set RAshift16_4_up_3 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $RAshift16_4_up_3 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: TDD_SYNC2, and set properties
  set TDD_SYNC2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 TDD_SYNC2 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $TDD_SYNC2

  # Create instance: adc_fifo_ad9361_2, and set properties
  set adc_fifo_ad9361_2 [ create_bd_cell -type ip -vlnv analog.com:user:util_wfifo:1.0 adc_fifo_ad9361_2 ]
  set_property -dict [ list \
   CONFIG.DIN_ADDRESS_WIDTH {4} \
   CONFIG.DIN_DATA_WIDTH {16} \
   CONFIG.DOUT_DATA_WIDTH {16} \
 ] $adc_fifo_ad9361_2

  # Create instance: axi_ad9361_2, and set properties
  set axi_ad9361_2 [ create_bd_cell -type ip -vlnv analog.com:user:axi_ad9361:1.0 axi_ad9361_2 ]
  set_property -dict [ list \
   CONFIG.ADC_DATAFORMAT_DISABLE {0} \
   CONFIG.ADC_DATAPATH_DISABLE {0} \
   CONFIG.ADC_DCFILTER_DISABLE {1} \
   CONFIG.ADC_INIT_DELAY {0} \
   CONFIG.ADC_IQCORRECTION_DISABLE {1} \
   CONFIG.ADC_USERPORTS_DISABLE {0} \
   CONFIG.CMOS_OR_LVDS_N {0} \
   CONFIG.DAC_DATAPATH_DISABLE {0} \
   CONFIG.DAC_DDS_DISABLE {1} \
   CONFIG.DAC_DDS_TYPE {1} \
   CONFIG.DAC_INIT_DELAY {0} \
   CONFIG.DAC_IQCORRECTION_DISABLE {1} \
   CONFIG.DAC_USERPORTS_DISABLE {0} \
   CONFIG.ID {0} \
   CONFIG.IO_DELAY_GROUP {dev_1_if_delay_group} \
   CONFIG.TDD_DISABLE {1} \
 ] $axi_ad9361_2

  # Create instance: dac_fifo_ad9361_2, and set properties
  set dac_fifo_ad9361_2 [ create_bd_cell -type ip -vlnv analog.com:user:util_rfifo:1.0 dac_fifo_ad9361_2 ]
  set_property -dict [ list \
   CONFIG.DIN_ADDRESS_WIDTH {4} \
   CONFIG.DIN_DATA_WIDTH {16} \
   CONFIG.DOUT_DATA_WIDTH {16} \
 ] $dac_fifo_ad9361_2

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins s_axi] [get_bd_intf_pins axi_ad9361_2/s_axi]

  # Create port connections
  connect_bd_net -net RAshift16_4_up_0_output_bus [get_bd_pins dout_data_6] [get_bd_pins RAshift16_4_up_0/output_bus]
  connect_bd_net -net RAshift16_4_up_1_output_bus [get_bd_pins dout_data_7] [get_bd_pins RAshift16_4_up_1/output_bus]
  connect_bd_net -net RAshift16_4_up_2_output_bus [get_bd_pins dout_data_4] [get_bd_pins RAshift16_4_up_2/output_bus]
  connect_bd_net -net RAshift16_4_up_3_output_bus [get_bd_pins dout_data_5] [get_bd_pins RAshift16_4_up_3/output_bus]
  connect_bd_net -net TDD_SYNC2_dout [get_bd_pins TDD_SYNC2/dout] [get_bd_pins axi_ad9361_2/tdd_sync]
  connect_bd_net -net ad9361_2_P1_N_1 [get_bd_pins ad9361_2_P1_N] [get_bd_pins axi_ad9361_2/rx_data_in_n]
  connect_bd_net -net ad9361_2_P1_P_1 [get_bd_pins ad9361_2_P1_P] [get_bd_pins axi_ad9361_2/rx_data_in_p]
  connect_bd_net -net ad9361_DCLK_2_N_1 [get_bd_pins ad9361_DCLK_2_N] [get_bd_pins axi_ad9361_2/rx_clk_in_n]
  connect_bd_net -net ad9361_DCLK_2_P_1 [get_bd_pins ad9361_DCLK_2_P] [get_bd_pins axi_ad9361_2/rx_clk_in_p]
  connect_bd_net -net ad9361_RX_FRAME2_N_1 [get_bd_pins ad9361_RX_FRAME2_N] [get_bd_pins axi_ad9361_2/rx_frame_in_n]
  connect_bd_net -net ad9361_RX_FRAME2_P_1 [get_bd_pins ad9361_RX_FRAME2_P] [get_bd_pins axi_ad9361_2/rx_frame_in_p]
  connect_bd_net -net adc_fifo_ad9361_2_dout_data_0 [get_bd_pins RAshift16_4_up_0/input_bus] [get_bd_pins adc_fifo_ad9361_2/dout_data_0]
  connect_bd_net -net adc_fifo_ad9361_2_dout_data_1 [get_bd_pins RAshift16_4_up_1/input_bus] [get_bd_pins adc_fifo_ad9361_2/dout_data_1]
  connect_bd_net -net adc_fifo_ad9361_2_dout_data_2 [get_bd_pins RAshift16_4_up_2/input_bus] [get_bd_pins adc_fifo_ad9361_2/dout_data_2]
  connect_bd_net -net adc_fifo_ad9361_2_dout_data_3 [get_bd_pins RAshift16_4_up_3/input_bus] [get_bd_pins adc_fifo_ad9361_2/dout_data_3]
  connect_bd_net -net axi_ad9361_2_adc_data_i0 [get_bd_pins adc_fifo_ad9361_2/din_data_0] [get_bd_pins axi_ad9361_2/adc_data_i0]
  connect_bd_net -net axi_ad9361_2_adc_data_i1 [get_bd_pins adc_fifo_ad9361_2/din_data_2] [get_bd_pins axi_ad9361_2/adc_data_i1]
  connect_bd_net -net axi_ad9361_2_adc_data_q0 [get_bd_pins adc_fifo_ad9361_2/din_data_1] [get_bd_pins axi_ad9361_2/adc_data_q0]
  connect_bd_net -net axi_ad9361_2_adc_data_q1 [get_bd_pins adc_fifo_ad9361_2/din_data_3] [get_bd_pins axi_ad9361_2/adc_data_q1]
  connect_bd_net -net axi_ad9361_2_adc_enable_i0 [get_bd_pins adc_fifo_ad9361_2/din_enable_0] [get_bd_pins axi_ad9361_2/adc_enable_i0]
  connect_bd_net -net axi_ad9361_2_adc_enable_i1 [get_bd_pins adc_fifo_ad9361_2/din_enable_2] [get_bd_pins axi_ad9361_2/adc_enable_i1]
  connect_bd_net -net axi_ad9361_2_adc_enable_q0 [get_bd_pins adc_fifo_ad9361_2/din_enable_1] [get_bd_pins axi_ad9361_2/adc_enable_q0]
  connect_bd_net -net axi_ad9361_2_adc_enable_q1 [get_bd_pins adc_fifo_ad9361_2/din_enable_3] [get_bd_pins axi_ad9361_2/adc_enable_q1]
  connect_bd_net -net axi_ad9361_2_adc_valid_i0 [get_bd_pins adc_valid_i0] [get_bd_pins adc_fifo_ad9361_2/din_valid_0] [get_bd_pins axi_ad9361_2/adc_valid_i0]
  connect_bd_net -net axi_ad9361_2_adc_valid_i1 [get_bd_pins adc_fifo_ad9361_2/din_valid_2] [get_bd_pins axi_ad9361_2/adc_valid_i1]
  connect_bd_net -net axi_ad9361_2_adc_valid_q0 [get_bd_pins adc_fifo_ad9361_2/din_valid_1] [get_bd_pins axi_ad9361_2/adc_valid_q0]
  connect_bd_net -net axi_ad9361_2_adc_valid_q1 [get_bd_pins adc_fifo_ad9361_2/din_valid_3] [get_bd_pins axi_ad9361_2/adc_valid_q1]
  connect_bd_net -net axi_ad9361_2_dac_enable_i0 [get_bd_pins axi_ad9361_2/dac_enable_i0] [get_bd_pins dac_fifo_ad9361_2/dout_enable_0]
  connect_bd_net -net axi_ad9361_2_dac_enable_i1 [get_bd_pins axi_ad9361_2/dac_enable_i1] [get_bd_pins dac_fifo_ad9361_2/dout_enable_2]
  connect_bd_net -net axi_ad9361_2_dac_enable_q0 [get_bd_pins axi_ad9361_2/dac_enable_q0] [get_bd_pins dac_fifo_ad9361_2/dout_enable_1]
  connect_bd_net -net axi_ad9361_2_dac_enable_q1 [get_bd_pins axi_ad9361_2/dac_enable_q1] [get_bd_pins dac_fifo_ad9361_2/dout_enable_3]
  connect_bd_net -net axi_ad9361_2_dac_sync_out [get_bd_pins axi_ad9361_2/dac_sync_in] [get_bd_pins axi_ad9361_2/dac_sync_out]
  connect_bd_net -net axi_ad9361_2_dac_valid_i0 [get_bd_pins axi_ad9361_2/dac_valid_i0] [get_bd_pins dac_fifo_ad9361_2/dout_valid_0]
  connect_bd_net -net axi_ad9361_2_dac_valid_i1 [get_bd_pins axi_ad9361_2/dac_valid_i1] [get_bd_pins dac_fifo_ad9361_2/dout_valid_2]
  connect_bd_net -net axi_ad9361_2_dac_valid_q0 [get_bd_pins axi_ad9361_2/dac_valid_q0] [get_bd_pins dac_fifo_ad9361_2/dout_valid_1]
  connect_bd_net -net axi_ad9361_2_dac_valid_q1 [get_bd_pins axi_ad9361_2/dac_valid_q1] [get_bd_pins dac_fifo_ad9361_2/dout_valid_3]
  connect_bd_net -net axi_ad9361_2_enable [get_bd_pins ad9361_EN_2] [get_bd_pins axi_ad9361_2/enable]
  connect_bd_net -net axi_ad9361_2_tx_clk_out_n [get_bd_pins ad9361_FB_CLK_2_N] [get_bd_pins axi_ad9361_2/tx_clk_out_n]
  connect_bd_net -net axi_ad9361_2_tx_clk_out_p [get_bd_pins ad9361_FB_CLK_2_P] [get_bd_pins axi_ad9361_2/tx_clk_out_p]
  connect_bd_net -net axi_ad9361_2_tx_data_out_n [get_bd_pins ad9361_2_P0_N] [get_bd_pins axi_ad9361_2/tx_data_out_n]
  connect_bd_net -net axi_ad9361_2_tx_data_out_p [get_bd_pins ad9361_2_P0_P] [get_bd_pins axi_ad9361_2/tx_data_out_p]
  connect_bd_net -net axi_ad9361_2_tx_frame_out_n [get_bd_pins ad9361_TX_FRAME2_N] [get_bd_pins axi_ad9361_2/tx_frame_out_n]
  connect_bd_net -net axi_ad9361_2_tx_frame_out_p [get_bd_pins ad9361_TX_FRAME2_P] [get_bd_pins axi_ad9361_2/tx_frame_out_p]
  connect_bd_net -net axi_ad9361_2_txnrx [get_bd_pins ad9361_TXNRX_2] [get_bd_pins axi_ad9361_2/txnrx]
  connect_bd_net -net dac_fifo_ad9361_1_dout_data_0 [get_bd_pins axi_ad9361_2/dac_data_i0] [get_bd_pins dac_fifo_ad9361_2/dout_data_0]
  connect_bd_net -net dac_fifo_ad9361_1_dout_data_1 [get_bd_pins axi_ad9361_2/dac_data_q0] [get_bd_pins dac_fifo_ad9361_2/dout_data_1]
  connect_bd_net -net dac_fifo_ad9361_1_dout_data_2 [get_bd_pins axi_ad9361_2/dac_data_i1] [get_bd_pins dac_fifo_ad9361_2/dout_data_2]
  connect_bd_net -net dac_fifo_ad9361_1_dout_data_3 [get_bd_pins axi_ad9361_2/dac_data_q1] [get_bd_pins dac_fifo_ad9361_2/dout_data_3]
  connect_bd_net -net delay_clk_1 [get_bd_pins delay_clk] [get_bd_pins axi_ad9361_2/delay_clk]
  connect_bd_net -net din_clk_1 [get_bd_pins din_clk] [get_bd_pins adc_fifo_ad9361_2/dout_clk] [get_bd_pins dac_fifo_ad9361_2/din_clk]
  connect_bd_net -net din_data_0_1 [get_bd_pins din_data_0] [get_bd_pins dac_fifo_ad9361_2/din_data_2]
  connect_bd_net -net din_data_1_1 [get_bd_pins din_data_1] [get_bd_pins dac_fifo_ad9361_2/din_data_3]
  connect_bd_net -net din_data_4_1 [get_bd_pins din_data_4] [get_bd_pins dac_fifo_ad9361_2/din_data_0]
  connect_bd_net -net din_data_5_1 [get_bd_pins din_data_5] [get_bd_pins dac_fifo_ad9361_2/din_data_1]
  connect_bd_net -net din_rstn_1 [get_bd_pins din_rstn] [get_bd_pins adc_fifo_ad9361_2/dout_rstn] [get_bd_pins dac_fifo_ad9361_2/din_rstn]
  connect_bd_net -net din_valid_in_1_1 [get_bd_pins LOGIC_1/dout] [get_bd_pins dac_fifo_ad9361_2/din_valid_in_0] [get_bd_pins dac_fifo_ad9361_2/din_valid_in_1] [get_bd_pins dac_fifo_ad9361_2/din_valid_in_2] [get_bd_pins dac_fifo_ad9361_2/din_valid_in_3]
  connect_bd_net -net dout_clk_1 [get_bd_pins adc_fifo_ad9361_2/din_clk] [get_bd_pins axi_ad9361_2/clk] [get_bd_pins axi_ad9361_2/l_clk] [get_bd_pins dac_fifo_ad9361_2/dout_clk]
  connect_bd_net -net dout_rst_1 [get_bd_pins adc_fifo_ad9361_2/din_rst] [get_bd_pins axi_ad9361_2/rst] [get_bd_pins dac_fifo_ad9361_2/dout_rst]
  connect_bd_net -net s_axi_aclk_1 [get_bd_pins s_axi_aclk] [get_bd_pins axi_ad9361_2/s_axi_aclk]
  connect_bd_net -net s_axi_aresetn_1 [get_bd_pins s_axi_aresetn] [get_bd_pins axi_ad9361_2/s_axi_aresetn]
  connect_bd_net -net up_enable_1 [get_bd_pins up_enable] [get_bd_pins axi_ad9361_2/up_enable]
  connect_bd_net -net up_txnrx_1 [get_bd_pins up_txnrx] [get_bd_pins axi_ad9361_2/up_txnrx]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: AD9361_1
proc create_hier_cell_AD9361_1 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_AD9361_1() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi


  # Create pins
  create_bd_pin -dir O -from 5 -to 0 ad9361_1_P0_N
  create_bd_pin -dir O -from 5 -to 0 ad9361_1_P0_P
  create_bd_pin -dir I -from 5 -to 0 ad9361_1_P1_N
  create_bd_pin -dir I -from 5 -to 0 ad9361_1_P1_P
  create_bd_pin -dir I ad9361_DCLK_1_N
  create_bd_pin -dir I ad9361_DCLK_1_P
  create_bd_pin -dir O ad9361_EN_1
  create_bd_pin -dir O ad9361_FB_CLK_1_N
  create_bd_pin -dir O ad9361_FB_CLK_1_P
  create_bd_pin -dir I ad9361_RX_FRAME1_N
  create_bd_pin -dir I ad9361_RX_FRAME1_P
  create_bd_pin -dir O ad9361_TXNRX_1
  create_bd_pin -dir O ad9361_TX_FRAME1_N
  create_bd_pin -dir O ad9361_TX_FRAME1_P
  create_bd_pin -dir O adc_valid_i0
  create_bd_pin -dir I -type clk delay_clk
  create_bd_pin -dir I -from 15 -to 0 din_data_2
  create_bd_pin -dir I -from 15 -to 0 din_data_3
  create_bd_pin -dir I -from 15 -to 0 din_data_10
  create_bd_pin -dir I -from 15 -to 0 din_data_11
  create_bd_pin -dir I -type clk dout_clk
  create_bd_pin -dir O -from 15 -to 0 dout_data_0
  create_bd_pin -dir O -from 15 -to 0 dout_data_1
  create_bd_pin -dir O -from 15 -to 0 dout_data_2
  create_bd_pin -dir O -from 15 -to 0 dout_data_3
  create_bd_pin -dir I dout_ovf
  create_bd_pin -dir I -type rst dout_rstn
  create_bd_pin -dir I -type clk s_axi_aclk
  create_bd_pin -dir I -type rst s_axi_aresetn
  create_bd_pin -dir I up_enable
  create_bd_pin -dir I up_txnrx

  # Create instance: LOGIC_1, and set properties
  set LOGIC_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 LOGIC_1 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {1} \
   CONFIG.CONST_WIDTH {1} \
 ] $LOGIC_1

  # Create instance: RAshift16_4_up_0, and set properties
  set block_name RAshift16_4_up
  set block_cell_name RAshift16_4_up_0
  if { [catch {set RAshift16_4_up_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $RAshift16_4_up_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: RAshift16_4_up_1, and set properties
  set block_name RAshift16_4_up
  set block_cell_name RAshift16_4_up_1
  if { [catch {set RAshift16_4_up_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $RAshift16_4_up_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: RAshift16_4_up_2, and set properties
  set block_name RAshift16_4_up
  set block_cell_name RAshift16_4_up_2
  if { [catch {set RAshift16_4_up_2 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $RAshift16_4_up_2 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: RAshift16_4_up_3, and set properties
  set block_name RAshift16_4_up
  set block_cell_name RAshift16_4_up_3
  if { [catch {set RAshift16_4_up_3 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $RAshift16_4_up_3 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: TDD_SYNC1, and set properties
  set TDD_SYNC1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 TDD_SYNC1 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $TDD_SYNC1

  # Create instance: adc_fifo_ad9361_1, and set properties
  set adc_fifo_ad9361_1 [ create_bd_cell -type ip -vlnv analog.com:user:util_wfifo:1.0 adc_fifo_ad9361_1 ]
  set_property -dict [ list \
   CONFIG.DIN_ADDRESS_WIDTH {4} \
   CONFIG.DIN_DATA_WIDTH {16} \
   CONFIG.DOUT_DATA_WIDTH {16} \
 ] $adc_fifo_ad9361_1

  # Create instance: axi_ad9361_1, and set properties
  set axi_ad9361_1 [ create_bd_cell -type ip -vlnv analog.com:user:axi_ad9361:1.0 axi_ad9361_1 ]
  set_property -dict [ list \
   CONFIG.ADC_DATAFORMAT_DISABLE {0} \
   CONFIG.ADC_DATAPATH_DISABLE {0} \
   CONFIG.ADC_DCFILTER_DISABLE {1} \
   CONFIG.ADC_INIT_DELAY {0} \
   CONFIG.ADC_IQCORRECTION_DISABLE {1} \
   CONFIG.ADC_USERPORTS_DISABLE {0} \
   CONFIG.CMOS_OR_LVDS_N {0} \
   CONFIG.DAC_DATAPATH_DISABLE {0} \
   CONFIG.DAC_DDS_CORDIC_DW {14} \
   CONFIG.DAC_DDS_DISABLE {1} \
   CONFIG.DAC_DDS_TYPE {1} \
   CONFIG.DAC_INIT_DELAY {0} \
   CONFIG.DAC_IQCORRECTION_DISABLE {1} \
   CONFIG.DAC_USERPORTS_DISABLE {0} \
   CONFIG.ID {0} \
   CONFIG.IO_DELAY_GROUP {dev_0_if_delay_group} \
   CONFIG.TDD_DISABLE {1} \
 ] $axi_ad9361_1

  # Create instance: dac_fifo_ad9361_1, and set properties
  set dac_fifo_ad9361_1 [ create_bd_cell -type ip -vlnv analog.com:user:util_rfifo:1.0 dac_fifo_ad9361_1 ]
  set_property -dict [ list \
   CONFIG.DIN_ADDRESS_WIDTH {4} \
   CONFIG.DIN_DATA_WIDTH {16} \
   CONFIG.DOUT_DATA_WIDTH {16} \
 ] $dac_fifo_ad9361_1

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins s_axi] [get_bd_intf_pins axi_ad9361_1/s_axi]

  # Create port connections
  connect_bd_net -net LOGIC_1_dout [get_bd_pins LOGIC_1/dout] [get_bd_pins dac_fifo_ad9361_1/din_valid_in_0] [get_bd_pins dac_fifo_ad9361_1/din_valid_in_1] [get_bd_pins dac_fifo_ad9361_1/din_valid_in_2] [get_bd_pins dac_fifo_ad9361_1/din_valid_in_3]
  connect_bd_net -net RAshift16_4_up_0_output_bus [get_bd_pins dout_data_0] [get_bd_pins RAshift16_4_up_0/output_bus]
  connect_bd_net -net RAshift16_4_up_1_output_bus [get_bd_pins dout_data_1] [get_bd_pins RAshift16_4_up_1/output_bus]
  connect_bd_net -net RAshift16_4_up_2_output_bus [get_bd_pins dout_data_2] [get_bd_pins RAshift16_4_up_2/output_bus]
  connect_bd_net -net RAshift16_4_up_3_output_bus [get_bd_pins dout_data_3] [get_bd_pins RAshift16_4_up_3/output_bus]
  connect_bd_net -net TDD_SYNC1_dout [get_bd_pins TDD_SYNC1/dout] [get_bd_pins axi_ad9361_1/tdd_sync]
  connect_bd_net -net ad9361_1_P1_N_1 [get_bd_pins ad9361_1_P1_N] [get_bd_pins axi_ad9361_1/rx_data_in_n]
  connect_bd_net -net ad9361_1_P1_P_1 [get_bd_pins ad9361_1_P1_P] [get_bd_pins axi_ad9361_1/rx_data_in_p]
  connect_bd_net -net ad9361_DCLK_1_N_1 [get_bd_pins ad9361_DCLK_1_N] [get_bd_pins axi_ad9361_1/rx_clk_in_n]
  connect_bd_net -net ad9361_DCLK_1_P_1 [get_bd_pins ad9361_DCLK_1_P] [get_bd_pins axi_ad9361_1/rx_clk_in_p]
  connect_bd_net -net ad9361_RX_FRAME1_N_1 [get_bd_pins ad9361_RX_FRAME1_N] [get_bd_pins axi_ad9361_1/rx_frame_in_n]
  connect_bd_net -net ad9361_RX_FRAME1_P_1 [get_bd_pins ad9361_RX_FRAME1_P] [get_bd_pins axi_ad9361_1/rx_frame_in_p]
  connect_bd_net -net adc_fifo_ad9361_1_dout_data_0 [get_bd_pins RAshift16_4_up_0/input_bus] [get_bd_pins adc_fifo_ad9361_1/dout_data_0]
  connect_bd_net -net adc_fifo_ad9361_1_dout_data_1 [get_bd_pins RAshift16_4_up_1/input_bus] [get_bd_pins adc_fifo_ad9361_1/dout_data_1]
  connect_bd_net -net adc_fifo_ad9361_1_dout_data_2 [get_bd_pins RAshift16_4_up_2/input_bus] [get_bd_pins adc_fifo_ad9361_1/dout_data_2]
  connect_bd_net -net adc_fifo_ad9361_1_dout_data_3 [get_bd_pins RAshift16_4_up_3/input_bus] [get_bd_pins adc_fifo_ad9361_1/dout_data_3]
  connect_bd_net -net axi_ad9361_1_adc_data_i0 [get_bd_pins adc_fifo_ad9361_1/din_data_0] [get_bd_pins axi_ad9361_1/adc_data_i0]
  connect_bd_net -net axi_ad9361_1_adc_data_i1 [get_bd_pins adc_fifo_ad9361_1/din_data_2] [get_bd_pins axi_ad9361_1/adc_data_i1]
  connect_bd_net -net axi_ad9361_1_adc_data_q0 [get_bd_pins adc_fifo_ad9361_1/din_data_1] [get_bd_pins axi_ad9361_1/adc_data_q0]
  connect_bd_net -net axi_ad9361_1_adc_data_q1 [get_bd_pins adc_fifo_ad9361_1/din_data_3] [get_bd_pins axi_ad9361_1/adc_data_q1]
  connect_bd_net -net axi_ad9361_1_adc_enable_i0 [get_bd_pins adc_fifo_ad9361_1/din_enable_0] [get_bd_pins axi_ad9361_1/adc_enable_i0]
  connect_bd_net -net axi_ad9361_1_adc_enable_i1 [get_bd_pins adc_fifo_ad9361_1/din_enable_2] [get_bd_pins axi_ad9361_1/adc_enable_i1]
  connect_bd_net -net axi_ad9361_1_adc_enable_q0 [get_bd_pins adc_fifo_ad9361_1/din_enable_1] [get_bd_pins axi_ad9361_1/adc_enable_q0]
  connect_bd_net -net axi_ad9361_1_adc_enable_q1 [get_bd_pins adc_fifo_ad9361_1/din_enable_3] [get_bd_pins axi_ad9361_1/adc_enable_q1]
  connect_bd_net -net axi_ad9361_1_adc_valid_i0 [get_bd_pins adc_valid_i0] [get_bd_pins adc_fifo_ad9361_1/din_valid_0] [get_bd_pins axi_ad9361_1/adc_valid_i0]
  connect_bd_net -net axi_ad9361_1_adc_valid_i1 [get_bd_pins adc_fifo_ad9361_1/din_valid_2] [get_bd_pins axi_ad9361_1/adc_valid_i1]
  connect_bd_net -net axi_ad9361_1_adc_valid_q0 [get_bd_pins adc_fifo_ad9361_1/din_valid_1] [get_bd_pins axi_ad9361_1/adc_valid_q0]
  connect_bd_net -net axi_ad9361_1_adc_valid_q1 [get_bd_pins adc_fifo_ad9361_1/din_valid_3] [get_bd_pins axi_ad9361_1/adc_valid_q1]
  connect_bd_net -net axi_ad9361_1_dac_enable_i0 [get_bd_pins axi_ad9361_1/dac_enable_i0] [get_bd_pins dac_fifo_ad9361_1/dout_enable_0]
  connect_bd_net -net axi_ad9361_1_dac_enable_i1 [get_bd_pins axi_ad9361_1/dac_enable_i1] [get_bd_pins dac_fifo_ad9361_1/dout_enable_2]
  connect_bd_net -net axi_ad9361_1_dac_enable_q0 [get_bd_pins axi_ad9361_1/dac_enable_q0] [get_bd_pins dac_fifo_ad9361_1/dout_enable_1]
  connect_bd_net -net axi_ad9361_1_dac_enable_q1 [get_bd_pins axi_ad9361_1/dac_enable_q1] [get_bd_pins dac_fifo_ad9361_1/dout_enable_3]
  connect_bd_net -net axi_ad9361_1_dac_sync_out [get_bd_pins axi_ad9361_1/dac_sync_in] [get_bd_pins axi_ad9361_1/dac_sync_out]
  connect_bd_net -net axi_ad9361_1_dac_valid_i0 [get_bd_pins axi_ad9361_1/dac_valid_i0] [get_bd_pins dac_fifo_ad9361_1/dout_valid_0]
  connect_bd_net -net axi_ad9361_1_dac_valid_i1 [get_bd_pins axi_ad9361_1/dac_valid_i1] [get_bd_pins dac_fifo_ad9361_1/dout_valid_2]
  connect_bd_net -net axi_ad9361_1_dac_valid_q0 [get_bd_pins axi_ad9361_1/dac_valid_q0] [get_bd_pins dac_fifo_ad9361_1/dout_valid_1]
  connect_bd_net -net axi_ad9361_1_dac_valid_q1 [get_bd_pins axi_ad9361_1/dac_valid_q1] [get_bd_pins dac_fifo_ad9361_1/dout_valid_3]
  connect_bd_net -net axi_ad9361_1_enable [get_bd_pins ad9361_EN_1] [get_bd_pins axi_ad9361_1/enable]
  connect_bd_net -net axi_ad9361_1_l_clk [get_bd_pins adc_fifo_ad9361_1/din_clk] [get_bd_pins axi_ad9361_1/clk] [get_bd_pins axi_ad9361_1/l_clk] [get_bd_pins dac_fifo_ad9361_1/dout_clk]
  connect_bd_net -net axi_ad9361_1_rst [get_bd_pins adc_fifo_ad9361_1/din_rst] [get_bd_pins axi_ad9361_1/rst] [get_bd_pins dac_fifo_ad9361_1/dout_rst]
  connect_bd_net -net axi_ad9361_1_tx_clk_out_n [get_bd_pins ad9361_FB_CLK_1_N] [get_bd_pins axi_ad9361_1/tx_clk_out_n]
  connect_bd_net -net axi_ad9361_1_tx_clk_out_p [get_bd_pins ad9361_FB_CLK_1_P] [get_bd_pins axi_ad9361_1/tx_clk_out_p]
  connect_bd_net -net axi_ad9361_1_tx_data_out_n [get_bd_pins ad9361_1_P0_N] [get_bd_pins axi_ad9361_1/tx_data_out_n]
  connect_bd_net -net axi_ad9361_1_tx_data_out_p [get_bd_pins ad9361_1_P0_P] [get_bd_pins axi_ad9361_1/tx_data_out_p]
  connect_bd_net -net axi_ad9361_1_tx_frame_out_n [get_bd_pins ad9361_TX_FRAME1_N] [get_bd_pins axi_ad9361_1/tx_frame_out_n]
  connect_bd_net -net axi_ad9361_1_tx_frame_out_p [get_bd_pins ad9361_TX_FRAME1_P] [get_bd_pins axi_ad9361_1/tx_frame_out_p]
  connect_bd_net -net axi_ad9361_1_txnrx [get_bd_pins ad9361_TXNRX_1] [get_bd_pins axi_ad9361_1/txnrx]
  connect_bd_net -net dac_fifo_ad9361_0_dout_data_0 [get_bd_pins axi_ad9361_1/dac_data_i0] [get_bd_pins dac_fifo_ad9361_1/dout_data_0]
  connect_bd_net -net dac_fifo_ad9361_0_dout_data_1 [get_bd_pins axi_ad9361_1/dac_data_q0] [get_bd_pins dac_fifo_ad9361_1/dout_data_1]
  connect_bd_net -net dac_fifo_ad9361_0_dout_data_2 [get_bd_pins axi_ad9361_1/dac_data_i1] [get_bd_pins dac_fifo_ad9361_1/dout_data_2]
  connect_bd_net -net dac_fifo_ad9361_0_dout_data_3 [get_bd_pins axi_ad9361_1/dac_data_q1] [get_bd_pins dac_fifo_ad9361_1/dout_data_3]
  connect_bd_net -net delay_clk_1 [get_bd_pins delay_clk] [get_bd_pins axi_ad9361_1/delay_clk]
  connect_bd_net -net din_data_10_1 [get_bd_pins din_data_10] [get_bd_pins dac_fifo_ad9361_1/din_data_2]
  connect_bd_net -net din_data_11_1 [get_bd_pins din_data_11] [get_bd_pins dac_fifo_ad9361_1/din_data_3]
  connect_bd_net -net din_data_2_1 [get_bd_pins din_data_2] [get_bd_pins dac_fifo_ad9361_1/din_data_0]
  connect_bd_net -net din_data_3_1 [get_bd_pins din_data_3] [get_bd_pins dac_fifo_ad9361_1/din_data_1]
  connect_bd_net -net dout_clk_1 [get_bd_pins dout_clk] [get_bd_pins adc_fifo_ad9361_1/dout_clk] [get_bd_pins dac_fifo_ad9361_1/din_clk]
  connect_bd_net -net dout_ovf_1 [get_bd_pins dout_ovf] [get_bd_pins adc_fifo_ad9361_1/dout_ovf]
  connect_bd_net -net dout_rstn_1 [get_bd_pins dout_rstn] [get_bd_pins adc_fifo_ad9361_1/dout_rstn] [get_bd_pins dac_fifo_ad9361_1/din_rstn]
  connect_bd_net -net s_axi_aclk_1 [get_bd_pins s_axi_aclk] [get_bd_pins axi_ad9361_1/s_axi_aclk]
  connect_bd_net -net s_axi_aresetn_1 [get_bd_pins s_axi_aresetn] [get_bd_pins axi_ad9361_1/s_axi_aresetn]
  connect_bd_net -net up_enable_1 [get_bd_pins up_enable] [get_bd_pins axi_ad9361_1/up_enable]
  connect_bd_net -net up_txnrx_1 [get_bd_pins up_txnrx] [get_bd_pins axi_ad9361_1/up_txnrx]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: SPI_MOD
proc create_hier_cell_SPI_MOD { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_SPI_MOD() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 AXI_LITE


  # Create pins
  create_bd_pin -dir O F1956_SPI_CLK
  create_bd_pin -dir O -from 0 -to 0 F1956_SPI_CS
  create_bd_pin -dir O F1956_SPI_DI
  create_bd_pin -dir O ad9361_SPI_CLK_1
  create_bd_pin -dir O -from 0 -to 0 ad9361_SPI_CS_1
  create_bd_pin -dir O -from 0 -to 0 ad9361_SPI_CS_2
  create_bd_pin -dir O -from 0 -to 0 ad9361_SPI_CS_3
  create_bd_pin -dir O ad9361_SPI_DI_1
  create_bd_pin -dir I ad9361_SPI_DO_1
  create_bd_pin -dir I ad9361_SPI_DO_2
  create_bd_pin -dir I ad9361_SPI_DO_3
  create_bd_pin -dir O -from 0 -to 0 ad9364_SPI_CS
  create_bd_pin -dir I ad9364_SPI_DO
  create_bd_pin -dir O -type intr ip2intc_irpt
  create_bd_pin -dir I -type clk s_axi4_aclk
  create_bd_pin -dir I -type rst s_axi4_aresetn

  # Create instance: SPI_MUX, and set properties
  set block_name Decoder_SPI
  set block_cell_name SPI_MUX
  if { [catch {set SPI_MUX [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $SPI_MUX eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: axi_spi, and set properties
  set axi_spi [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_quad_spi:3.2 axi_spi ]
  set_property -dict [ list \
   CONFIG.C_FAMILY {artix7} \
   CONFIG.C_FIFO_DEPTH {256} \
   CONFIG.C_NUM_SS_BITS {5} \
   CONFIG.C_SCK_RATIO {16} \
   CONFIG.C_SUB_FAMILY {artix7} \
   CONFIG.C_TYPE_OF_AXI4_INTERFACE {0} \
   CONFIG.C_USE_STARTUP {0} \
   CONFIG.C_XIP_MODE {0} \
   CONFIG.Multiples16 {10} \
 ] $axi_spi

  # Create instance: cs_0, and set properties
  set cs_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 cs_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {0} \
   CONFIG.DIN_TO {0} \
   CONFIG.DIN_WIDTH {5} \
 ] $cs_0

  # Create instance: cs_1, and set properties
  set cs_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 cs_1 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {1} \
   CONFIG.DIN_TO {1} \
   CONFIG.DIN_WIDTH {5} \
   CONFIG.DOUT_WIDTH {1} \
 ] $cs_1

  # Create instance: cs_2, and set properties
  set cs_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 cs_2 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {2} \
   CONFIG.DIN_TO {2} \
   CONFIG.DIN_WIDTH {5} \
   CONFIG.DOUT_WIDTH {1} \
 ] $cs_2

  # Create instance: cs_3, and set properties
  set cs_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 cs_3 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {3} \
   CONFIG.DIN_TO {3} \
   CONFIG.DIN_WIDTH {5} \
   CONFIG.DOUT_WIDTH {1} \
 ] $cs_3

  # Create instance: cs_4, and set properties
  set cs_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 cs_4 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {4} \
   CONFIG.DIN_TO {4} \
   CONFIG.DIN_WIDTH {5} \
   CONFIG.DOUT_WIDTH {1} \
 ] $cs_4

  # Create instance: on_off_f1956_clk, and set properties
  set block_name on_off_wire
  set block_cell_name on_off_f1956_clk
  if { [catch {set on_off_f1956_clk [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $on_off_f1956_clk eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: on_off_f1956_data, and set properties
  set block_name on_off_wire
  set block_cell_name on_off_f1956_data
  if { [catch {set on_off_f1956_data [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $on_off_f1956_data eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create interface connections
  connect_bd_intf_net -intf_net AXI_LITE_1 [get_bd_intf_pins AXI_LITE] [get_bd_intf_pins axi_spi/AXI_LITE]

  # Create port connections
  connect_bd_net -net SPI_MUX_miso_out [get_bd_pins SPI_MUX/miso_out] [get_bd_pins axi_spi/io1_i]
  connect_bd_net -net ad9361_SPI_DO_1_1 [get_bd_pins ad9361_SPI_DO_1] [get_bd_pins SPI_MUX/miso_in_0]
  connect_bd_net -net ad9361_SPI_DO_2_1 [get_bd_pins ad9361_SPI_DO_2] [get_bd_pins SPI_MUX/miso_in_1]
  connect_bd_net -net ad9361_SPI_DO_3_1 [get_bd_pins ad9361_SPI_DO_3] [get_bd_pins SPI_MUX/miso_in_2]
  connect_bd_net -net ad9364_SPI_DO_1 [get_bd_pins ad9364_SPI_DO] [get_bd_pins SPI_MUX/miso_in_3]
  connect_bd_net -net axi_spi_io0_o [get_bd_pins ad9361_SPI_DI_1] [get_bd_pins axi_spi/io0_o] [get_bd_pins on_off_f1956_data/data_in]
  connect_bd_net -net axi_spi_ip2intc_irpt [get_bd_pins ip2intc_irpt] [get_bd_pins axi_spi/ip2intc_irpt]
  connect_bd_net -net axi_spi_sck_o [get_bd_pins ad9361_SPI_CLK_1] [get_bd_pins axi_spi/sck_o] [get_bd_pins on_off_f1956_clk/data_in]
  connect_bd_net -net axi_spi_ss_o [get_bd_pins SPI_MUX/code] [get_bd_pins axi_spi/ss_o] [get_bd_pins cs_0/Din] [get_bd_pins cs_1/Din] [get_bd_pins cs_2/Din] [get_bd_pins cs_3/Din] [get_bd_pins cs_4/Din]
  connect_bd_net -net cs_0_Dout [get_bd_pins ad9361_SPI_CS_1] [get_bd_pins cs_0/Dout]
  connect_bd_net -net cs_1_Dout [get_bd_pins ad9361_SPI_CS_2] [get_bd_pins cs_1/Dout]
  connect_bd_net -net cs_2_Dout [get_bd_pins ad9361_SPI_CS_3] [get_bd_pins cs_2/Dout]
  connect_bd_net -net cs_3_Dout [get_bd_pins ad9364_SPI_CS] [get_bd_pins cs_3/Dout]
  connect_bd_net -net cs_4_Dout [get_bd_pins F1956_SPI_CS] [get_bd_pins cs_4/Dout] [get_bd_pins on_off_f1956_clk/mode] [get_bd_pins on_off_f1956_data/mode]
  connect_bd_net -net on_off_f1956_clk_data_out [get_bd_pins F1956_SPI_CLK] [get_bd_pins on_off_f1956_clk/data_out]
  connect_bd_net -net on_off_f1956_data_data_out [get_bd_pins F1956_SPI_DI] [get_bd_pins on_off_f1956_data/data_out]
  connect_bd_net -net s_axi4_aclk_1 [get_bd_pins s_axi4_aclk] [get_bd_pins axi_spi/ext_spi_clk] [get_bd_pins axi_spi/s_axi_aclk]
  connect_bd_net -net s_axi4_aresetn_1 [get_bd_pins s_axi4_aresetn] [get_bd_pins axi_spi/s_axi_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: CLK_AXI
proc create_hier_cell_CLK_AXI { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_CLK_AXI() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir I FPGA_REF_40MHZ
  create_bd_pin -dir O -type clk axi_periph_clk
  create_bd_pin -dir O -type clk delay_clk
  create_bd_pin -dir O out_ref
  create_bd_pin -dir O -from 0 -to 0 -type rst peripheral_aresetn
  create_bd_pin -dir O -type rst reset_n

  # Create instance: AXI_reset, and set properties
  set AXI_reset [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 AXI_reset ]
  set_property -dict [ list \
   CONFIG.C_AUX_RST_WIDTH {16} \
   CONFIG.C_EXT_RST_WIDTH {16} \
 ] $AXI_reset

  # Create instance: CLK_COMMON, and set properties
  set CLK_COMMON [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 CLK_COMMON ]
  set_property -dict [ list \
   CONFIG.CLKIN1_JITTER_PS {250.0} \
   CONFIG.CLKOUT1_JITTER {158.299} \
   CONFIG.CLKOUT1_PHASE_ERROR {191.950} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {200.000} \
   CONFIG.CLKOUT2_JITTER {180.876} \
   CONFIG.CLKOUT2_PHASE_ERROR {191.950} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {100} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.CLKOUT3_JITTER {232.099} \
   CONFIG.CLKOUT3_PHASE_ERROR {191.950} \
   CONFIG.CLKOUT3_REQUESTED_OUT_FREQ {100.000} \
   CONFIG.CLKOUT3_USED {false} \
   CONFIG.CLK_OUT1_PORT {delay_clk} \
   CONFIG.CLK_OUT2_PORT {axi_periph_clk} \
   CONFIG.CLK_OUT3_PORT {clk_out3} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {25.000} \
   CONFIG.MMCM_CLKIN1_PERIOD {25.000} \
   CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {5.000} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {10} \
   CONFIG.MMCM_CLKOUT2_DIVIDE {1} \
   CONFIG.NUM_OUT_CLKS {2} \
   CONFIG.PRIM_IN_FREQ {40.000} \
   CONFIG.PRIM_SOURCE {No_buffer} \
   CONFIG.USE_RESET {false} \
 ] $CLK_COMMON

  # Create instance: FPGA_reset, and set properties
  set block_name FPGA_reset
  set block_cell_name FPGA_reset
  if { [catch {set FPGA_reset [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $FPGA_reset eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: ibuf_0, and set properties
  set block_name ibuf
  set block_cell_name ibuf_0
  if { [catch {set ibuf_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $ibuf_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create port connections
  connect_bd_net -net FPGA_REF_40MHZ_1 [get_bd_pins FPGA_REF_40MHZ] [get_bd_pins ibuf_0/in_ref]
  connect_bd_net -net FPGA_reset_0_reset_n [get_bd_pins reset_n] [get_bd_pins AXI_reset/ext_reset_in] [get_bd_pins FPGA_reset/reset_n]
  connect_bd_net -net clk_wiz_0_axi_periph_clk [get_bd_pins axi_periph_clk] [get_bd_pins AXI_reset/slowest_sync_clk] [get_bd_pins CLK_COMMON/axi_periph_clk] [get_bd_pins FPGA_reset/clk]
  connect_bd_net -net clk_wiz_0_delay_clk [get_bd_pins delay_clk] [get_bd_pins CLK_COMMON/delay_clk]
  connect_bd_net -net clk_wiz_0_locked [get_bd_pins AXI_reset/dcm_locked] [get_bd_pins CLK_COMMON/locked] [get_bd_pins FPGA_reset/locked]
  connect_bd_net -net ibuf_0_out_ref [get_bd_pins out_ref] [get_bd_pins CLK_COMMON/clk_in1] [get_bd_pins ibuf_0/out_ref]
  connect_bd_net -net proc_sys_reset_0_peripheral_aresetn [get_bd_pins peripheral_aresetn] [get_bd_pins AXI_reset/peripheral_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: AXI_Peripheral
proc create_hier_cell_AXI_Peripheral { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_AXI_Peripheral() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M00_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M01_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M02_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M03_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M04_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M05_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M06_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M07_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M08_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M09_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M10_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M12_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M14_AXI


  # Create pins
  create_bd_pin -dir O -type clk AXI_RX_CLK_OUT
  create_bd_pin -dir O -from 16 -to 0 AXI_RX_DATA_OUT
  create_bd_pin -dir I -type clk AXI_TX_CLK_IN
  create_bd_pin -dir I -from 16 -to 0 AXI_TX_DATA_IN
  create_bd_pin -dir I -from 0 -to 0 In0
  create_bd_pin -dir I -type rst S00_ARESETN
  create_bd_pin -dir I -type clk fifo_wr_clk
  create_bd_pin -dir I -from 15 -to 0 fifo_wr_data_0
  create_bd_pin -dir I -from 15 -to 0 fifo_wr_data_1
  create_bd_pin -dir O fifo_wr_xfer_req
  create_bd_pin -dir I -type clk idelay_ref_clk
  create_bd_pin -dir I -type clk m_aclk
  create_bd_pin -dir O packed_fifo_wr_sync
  create_bd_pin -dir I -type rst reset

  # Create instance: AXI_C2C, and set properties
  set AXI_C2C [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_chip2chip:5.0 AXI_C2C ]
  set_property -dict [ list \
   CONFIG.C_COMMON_CLK {0} \
   CONFIG.C_INCLUDE_AXILITE {2} \
   CONFIG.C_INTERFACE_MODE {1} \
   CONFIG.C_MASTER_FPGA {1} \
   CONFIG.C_NUM_OF_IO {36} \
 ] $AXI_C2C

  # Create instance: AXI_C2C_axi_periph, and set properties
  set AXI_C2C_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 AXI_C2C_axi_periph ]
  set_property -dict [ list \
   CONFIG.NUM_MI {16} \
 ] $AXI_C2C_axi_periph

  # Create instance: AXI_DMA, and set properties
  set AXI_DMA [ create_bd_cell -type ip -vlnv analog.com:user:axi_dmac:1.0 AXI_DMA ]
  set_property -dict [ list \
   CONFIG.ALLOW_ASYM_MEM {1} \
   CONFIG.CYCLIC {false} \
   CONFIG.DMA_AXI_PROTOCOL_DEST {0} \
   CONFIG.DMA_DATA_WIDTH_DEST {32} \
   CONFIG.DMA_DATA_WIDTH_SRC {32} \
   CONFIG.SYNC_TRANSFER_START {true} \
 ] $AXI_DMA

  # Create instance: Concat, and set properties
  set Concat [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 Concat ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {4} \
 ] $Concat

  # Create instance: GND, and set properties
  set GND [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 GND ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $GND

  # Create instance: VCC, and set properties
  set VCC [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 VCC ]

  # Create instance: xlconcat_1, and set properties
  set xlconcat_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_1 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {16} \
   CONFIG.IN1_WIDTH {16} \
 ] $xlconcat_1

  # Create interface connections
  connect_bd_intf_net -intf_net AXI_C2C_axi_periph_M00_AXI [get_bd_intf_pins M02_AXI] [get_bd_intf_pins AXI_C2C_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net AXI_C2C_axi_periph_M01_AXI [get_bd_intf_pins M00_AXI] [get_bd_intf_pins AXI_C2C_axi_periph/M01_AXI]
  connect_bd_intf_net -intf_net AXI_C2C_axi_periph_M02_AXI [get_bd_intf_pins M01_AXI] [get_bd_intf_pins AXI_C2C_axi_periph/M02_AXI]
  connect_bd_intf_net -intf_net AXI_C2C_axi_periph_M03_AXI [get_bd_intf_pins M03_AXI] [get_bd_intf_pins AXI_C2C_axi_periph/M03_AXI]
  connect_bd_intf_net -intf_net AXI_C2C_axi_periph_M04_AXI [get_bd_intf_pins AXI_C2C_axi_periph/M04_AXI] [get_bd_intf_pins AXI_DMA/s_axi]
  connect_bd_intf_net -intf_net AXI_C2C_axi_periph_M06_AXI [get_bd_intf_pins M04_AXI] [get_bd_intf_pins AXI_C2C_axi_periph/M06_AXI]
  connect_bd_intf_net -intf_net AXI_C2C_axi_periph_M11_AXI [get_bd_intf_pins M06_AXI] [get_bd_intf_pins AXI_C2C_axi_periph/M11_AXI]
  connect_bd_intf_net -intf_net AXI_C2C_m_axi_lite [get_bd_intf_pins AXI_C2C/m_axi_lite] [get_bd_intf_pins AXI_C2C_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net AXI_DMA_m_dest_axi [get_bd_intf_pins AXI_C2C/s_axi] [get_bd_intf_pins AXI_DMA/m_dest_axi]
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins M05_AXI] [get_bd_intf_pins AXI_C2C_axi_periph/M05_AXI]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins M07_AXI] [get_bd_intf_pins AXI_C2C_axi_periph/M07_AXI]
  connect_bd_intf_net -intf_net Conn3 [get_bd_intf_pins M14_AXI] [get_bd_intf_pins AXI_C2C_axi_periph/M14_AXI]
  connect_bd_intf_net -intf_net Conn4 [get_bd_intf_pins M08_AXI] [get_bd_intf_pins AXI_C2C_axi_periph/M08_AXI]
  connect_bd_intf_net -intf_net Conn5 [get_bd_intf_pins M09_AXI] [get_bd_intf_pins AXI_C2C_axi_periph/M09_AXI]
  connect_bd_intf_net -intf_net Conn6 [get_bd_intf_pins M10_AXI] [get_bd_intf_pins AXI_C2C_axi_periph/M10_AXI]
  connect_bd_intf_net -intf_net Conn7 [get_bd_intf_pins M12_AXI] [get_bd_intf_pins AXI_C2C_axi_periph/M12_AXI]

  # Create port connections
  connect_bd_net -net AXI_C2C_axi_c2c_selio_tx_clk_out [get_bd_pins AXI_RX_CLK_OUT] [get_bd_pins AXI_C2C/axi_c2c_selio_tx_clk_out]
  connect_bd_net -net AXI_C2C_axi_c2c_selio_tx_data_out [get_bd_pins AXI_RX_DATA_OUT] [get_bd_pins AXI_C2C/axi_c2c_selio_tx_data_out]
  connect_bd_net -net AXI_DMA_fifo_wr_xfer_req [get_bd_pins fifo_wr_xfer_req] [get_bd_pins AXI_DMA/fifo_wr_xfer_req]
  connect_bd_net -net AXI_TX_CLK_IN_1 [get_bd_pins AXI_TX_CLK_IN] [get_bd_pins AXI_C2C/axi_c2c_selio_rx_clk_in]
  connect_bd_net -net AXI_TX_DATA_IN_1 [get_bd_pins AXI_TX_DATA_IN] [get_bd_pins AXI_C2C/axi_c2c_selio_rx_data_in]
  connect_bd_net -net Concat_dout [get_bd_pins AXI_C2C/axi_c2c_m2s_intr_in] [get_bd_pins Concat/dout]
  connect_bd_net -net GND_dout [get_bd_pins Concat/In2] [get_bd_pins Concat/In3] [get_bd_pins GND/dout]
  connect_bd_net -net In0_1 [get_bd_pins In0] [get_bd_pins Concat/In0]
  connect_bd_net -net M12_ARESETN_1 [get_bd_pins S00_ARESETN] [get_bd_pins AXI_C2C/s_aresetn] [get_bd_pins AXI_C2C_axi_periph/ARESETN] [get_bd_pins AXI_C2C_axi_periph/M00_ARESETN] [get_bd_pins AXI_C2C_axi_periph/M01_ARESETN] [get_bd_pins AXI_C2C_axi_periph/M02_ARESETN] [get_bd_pins AXI_C2C_axi_periph/M03_ARESETN] [get_bd_pins AXI_C2C_axi_periph/M04_ARESETN] [get_bd_pins AXI_C2C_axi_periph/M05_ARESETN] [get_bd_pins AXI_C2C_axi_periph/M06_ARESETN] [get_bd_pins AXI_C2C_axi_periph/M07_ARESETN] [get_bd_pins AXI_C2C_axi_periph/M08_ARESETN] [get_bd_pins AXI_C2C_axi_periph/M09_ARESETN] [get_bd_pins AXI_C2C_axi_periph/M10_ARESETN] [get_bd_pins AXI_C2C_axi_periph/M11_ARESETN] [get_bd_pins AXI_C2C_axi_periph/M12_ARESETN] [get_bd_pins AXI_C2C_axi_periph/M13_ARESETN] [get_bd_pins AXI_C2C_axi_periph/M14_ARESETN] [get_bd_pins AXI_C2C_axi_periph/M15_ARESETN] [get_bd_pins AXI_C2C_axi_periph/S00_ARESETN] [get_bd_pins AXI_DMA/m_dest_axi_aresetn] [get_bd_pins AXI_DMA/s_axi_aresetn]
  connect_bd_net -net Net [get_bd_pins m_aclk] [get_bd_pins AXI_C2C/axi_c2c_phy_clk] [get_bd_pins AXI_C2C/m_axi_lite_aclk] [get_bd_pins AXI_C2C/s_aclk] [get_bd_pins AXI_C2C_axi_periph/ACLK] [get_bd_pins AXI_C2C_axi_periph/M00_ACLK] [get_bd_pins AXI_C2C_axi_periph/M01_ACLK] [get_bd_pins AXI_C2C_axi_periph/M02_ACLK] [get_bd_pins AXI_C2C_axi_periph/M03_ACLK] [get_bd_pins AXI_C2C_axi_periph/M04_ACLK] [get_bd_pins AXI_C2C_axi_periph/M05_ACLK] [get_bd_pins AXI_C2C_axi_periph/M06_ACLK] [get_bd_pins AXI_C2C_axi_periph/M07_ACLK] [get_bd_pins AXI_C2C_axi_periph/M08_ACLK] [get_bd_pins AXI_C2C_axi_periph/M09_ACLK] [get_bd_pins AXI_C2C_axi_periph/M10_ACLK] [get_bd_pins AXI_C2C_axi_periph/M11_ACLK] [get_bd_pins AXI_C2C_axi_periph/M12_ACLK] [get_bd_pins AXI_C2C_axi_periph/M13_ACLK] [get_bd_pins AXI_C2C_axi_periph/M14_ACLK] [get_bd_pins AXI_C2C_axi_periph/M15_ACLK] [get_bd_pins AXI_C2C_axi_periph/S00_ACLK] [get_bd_pins AXI_DMA/m_dest_axi_aclk] [get_bd_pins AXI_DMA/s_axi_aclk]
  connect_bd_net -net VCC_dout [get_bd_pins AXI_DMA/fifo_wr_en] [get_bd_pins AXI_DMA/fifo_wr_sync] [get_bd_pins VCC/dout]
  connect_bd_net -net axi_dmac_0_irq [get_bd_pins AXI_DMA/irq] [get_bd_pins Concat/In1]
  connect_bd_net -net fifo_wr_clk_1 [get_bd_pins fifo_wr_clk] [get_bd_pins AXI_DMA/fifo_wr_clk]
  connect_bd_net -net fifo_wr_data_0_1 [get_bd_pins fifo_wr_data_0] [get_bd_pins xlconcat_1/In0]
  connect_bd_net -net fifo_wr_data_1_1 [get_bd_pins fifo_wr_data_1] [get_bd_pins xlconcat_1/In1]
  connect_bd_net -net idelay_ref_clk_1 [get_bd_pins idelay_ref_clk] [get_bd_pins AXI_C2C/idelay_ref_clk]
  connect_bd_net -net xlconcat_1_dout [get_bd_pins AXI_DMA/fifo_wr_din] [get_bd_pins xlconcat_1/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: AD9364
proc create_hier_cell_AD9364 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_AD9364() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi


  # Create pins
  create_bd_pin -dir O ad9361_FB_CLK_P
  create_bd_pin -dir I ad9364_DCLK_N
  create_bd_pin -dir I ad9364_DCLK_P
  create_bd_pin -dir O ad9364_EN
  create_bd_pin -dir O ad9364_FB_CLK_N
  create_bd_pin -dir O -from 5 -to 0 ad9364_P0_N
  create_bd_pin -dir O -from 5 -to 0 ad9364_P0_P
  create_bd_pin -dir I -from 5 -to 0 ad9364_P1_N
  create_bd_pin -dir I -from 5 -to 0 ad9364_P1_P
  create_bd_pin -dir O ad9364_TXNRX
  create_bd_pin -dir I ad9364_TX_FRAME_N
  create_bd_pin -dir O ad9364_TX_FRAME_N1
  create_bd_pin -dir I ad9364_TX_FRAME_P
  create_bd_pin -dir O ad9364_TX_FRAME_P1
  create_bd_pin -dir I -type clk delay_clk
  create_bd_pin -dir O -from 31 -to 0 dout
  create_bd_pin -dir I -type clk dout_clk
  create_bd_pin -dir I -type rst ext_reset_in
  create_bd_pin -dir I -type clk s_axi_aclk
  create_bd_pin -dir I -type rst s_axi_aresetn
  create_bd_pin -dir I up_enable
  create_bd_pin -dir I up_txnrx

  # Create instance: LOGIC_1, and set properties
  set LOGIC_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 LOGIC_1 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {1} \
   CONFIG.CONST_WIDTH {1} \
 ] $LOGIC_1

  # Create instance: TDD_SYNC4, and set properties
  set TDD_SYNC4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 TDD_SYNC4 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $TDD_SYNC4

  # Create instance: adc_fifo_ad9364_0, and set properties
  set adc_fifo_ad9364_0 [ create_bd_cell -type ip -vlnv analog.com:user:util_wfifo:1.0 adc_fifo_ad9364_0 ]
  set_property -dict [ list \
   CONFIG.DIN_ADDRESS_WIDTH {4} \
   CONFIG.DIN_DATA_WIDTH {16} \
   CONFIG.DOUT_DATA_WIDTH {16} \
   CONFIG.NUM_OF_CHANNELS {2} \
 ] $adc_fifo_ad9364_0

  # Create instance: axi_ad9364, and set properties
  set axi_ad9364 [ create_bd_cell -type ip -vlnv analog.com:user:axi_ad9361:1.0 axi_ad9364 ]
  set_property -dict [ list \
   CONFIG.ADC_DATAFORMAT_DISABLE {0} \
   CONFIG.ADC_DATAPATH_DISABLE {0} \
   CONFIG.ADC_DCFILTER_DISABLE {1} \
   CONFIG.ADC_INIT_DELAY {0} \
   CONFIG.ADC_IQCORRECTION_DISABLE {1} \
   CONFIG.ADC_USERPORTS_DISABLE {0} \
   CONFIG.CMOS_OR_LVDS_N {0} \
   CONFIG.DAC_DATAPATH_DISABLE {0} \
   CONFIG.DAC_DDS_DISABLE {1} \
   CONFIG.DAC_DDS_TYPE {1} \
   CONFIG.DAC_INIT_DELAY {0} \
   CONFIG.DAC_IQCORRECTION_DISABLE {1} \
   CONFIG.DAC_USERPORTS_DISABLE {0} \
   CONFIG.ID {0} \
   CONFIG.IO_DELAY_GROUP {dev_4_if_delay_group} \
   CONFIG.MODE_1R1T {1} \
   CONFIG.TDD_DISABLE {1} \
 ] $axi_ad9364

  # Create instance: dac_fifo_ad9364_0, and set properties
  set dac_fifo_ad9364_0 [ create_bd_cell -type ip -vlnv analog.com:user:util_rfifo:1.0 dac_fifo_ad9364_0 ]
  set_property -dict [ list \
   CONFIG.DIN_ADDRESS_WIDTH {4} \
   CONFIG.DIN_DATA_WIDTH {16} \
   CONFIG.DOUT_DATA_WIDTH {16} \
   CONFIG.NUM_OF_CHANNELS {2} \
 ] $dac_fifo_ad9364_0

  # Create instance: divclk_64_rst1, and set properties
  set divclk_64_rst1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 divclk_64_rst1 ]
  set_property -dict [ list \
   CONFIG.C_AUX_RESET_HIGH {0} \
 ] $divclk_64_rst1

  # Create instance: zero_sample, and set properties
  set zero_sample [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 zero_sample ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {16} \
 ] $zero_sample

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins s_axi] [get_bd_intf_pins axi_ad9364/s_axi]

  # Create port connections
  connect_bd_net -net Net [get_bd_pins LOGIC_1/dout] [get_bd_pins dac_fifo_ad9364_0/din_valid_in_0] [get_bd_pins dac_fifo_ad9364_0/din_valid_in_1]
  connect_bd_net -net TDD_SYNC4_dout [get_bd_pins TDD_SYNC4/dout] [get_bd_pins axi_ad9364/tdd_sync]
  connect_bd_net -net ad9364_DCLK_N_1 [get_bd_pins ad9364_DCLK_N] [get_bd_pins axi_ad9364/rx_clk_in_n]
  connect_bd_net -net ad9364_DCLK_P_1 [get_bd_pins ad9364_DCLK_P] [get_bd_pins axi_ad9364/rx_clk_in_p]
  connect_bd_net -net ad9364_P1_N_1 [get_bd_pins ad9364_P1_N] [get_bd_pins axi_ad9364/rx_data_in_n]
  connect_bd_net -net ad9364_P1_P_1 [get_bd_pins ad9364_P1_P] [get_bd_pins axi_ad9364/rx_data_in_p]
  connect_bd_net -net ad9364_TX_FRAME_N_1 [get_bd_pins ad9364_TX_FRAME_N] [get_bd_pins axi_ad9364/rx_frame_in_n]
  connect_bd_net -net ad9364_TX_FRAME_P_1 [get_bd_pins ad9364_TX_FRAME_P] [get_bd_pins axi_ad9364/rx_frame_in_p]
  connect_bd_net -net axi_ad9364_adc_data_i0 [get_bd_pins adc_fifo_ad9364_0/din_data_0] [get_bd_pins axi_ad9364/adc_data_i0]
  connect_bd_net -net axi_ad9364_adc_data_q0 [get_bd_pins adc_fifo_ad9364_0/din_data_1] [get_bd_pins axi_ad9364/adc_data_q0]
  connect_bd_net -net axi_ad9364_adc_enable_i0 [get_bd_pins adc_fifo_ad9364_0/din_enable_0] [get_bd_pins axi_ad9364/adc_enable_i0]
  connect_bd_net -net axi_ad9364_adc_enable_q0 [get_bd_pins adc_fifo_ad9364_0/din_enable_1] [get_bd_pins axi_ad9364/adc_enable_q0]
  connect_bd_net -net axi_ad9364_adc_valid_i0 [get_bd_pins adc_fifo_ad9364_0/din_valid_0] [get_bd_pins axi_ad9364/adc_valid_i0]
  connect_bd_net -net axi_ad9364_adc_valid_q0 [get_bd_pins adc_fifo_ad9364_0/din_valid_1] [get_bd_pins axi_ad9364/adc_valid_q0]
  connect_bd_net -net axi_ad9364_dac_enable_i0 [get_bd_pins axi_ad9364/dac_enable_i0] [get_bd_pins dac_fifo_ad9364_0/dout_enable_0]
  connect_bd_net -net axi_ad9364_dac_enable_q0 [get_bd_pins axi_ad9364/dac_enable_q0] [get_bd_pins dac_fifo_ad9364_0/dout_enable_1]
  connect_bd_net -net axi_ad9364_dac_sync_out [get_bd_pins axi_ad9364/dac_sync_in] [get_bd_pins axi_ad9364/dac_sync_out]
  connect_bd_net -net axi_ad9364_dac_valid_i0 [get_bd_pins axi_ad9364/dac_valid_i0] [get_bd_pins dac_fifo_ad9364_0/dout_valid_0]
  connect_bd_net -net axi_ad9364_dac_valid_q0 [get_bd_pins axi_ad9364/dac_valid_q0] [get_bd_pins dac_fifo_ad9364_0/dout_valid_1]
  connect_bd_net -net axi_ad9364_enable [get_bd_pins ad9364_EN] [get_bd_pins axi_ad9364/enable]
  connect_bd_net -net axi_ad9364_l_clk [get_bd_pins adc_fifo_ad9364_0/din_clk] [get_bd_pins axi_ad9364/clk] [get_bd_pins axi_ad9364/l_clk] [get_bd_pins dac_fifo_ad9364_0/dout_clk]
  connect_bd_net -net axi_ad9364_tx_clk_out_n [get_bd_pins ad9364_FB_CLK_N] [get_bd_pins axi_ad9364/tx_clk_out_n]
  connect_bd_net -net axi_ad9364_tx_clk_out_p [get_bd_pins ad9361_FB_CLK_P] [get_bd_pins axi_ad9364/tx_clk_out_p]
  connect_bd_net -net axi_ad9364_tx_data_out_n [get_bd_pins ad9364_P0_N] [get_bd_pins axi_ad9364/tx_data_out_n]
  connect_bd_net -net axi_ad9364_tx_data_out_p [get_bd_pins ad9364_P0_P] [get_bd_pins axi_ad9364/tx_data_out_p]
  connect_bd_net -net axi_ad9364_tx_frame_out_n [get_bd_pins ad9364_TX_FRAME_N1] [get_bd_pins axi_ad9364/tx_frame_out_n]
  connect_bd_net -net axi_ad9364_tx_frame_out_p [get_bd_pins ad9364_TX_FRAME_P1] [get_bd_pins axi_ad9364/tx_frame_out_p]
  connect_bd_net -net axi_ad9364_txnrx [get_bd_pins ad9364_TXNRX] [get_bd_pins axi_ad9364/txnrx]
  connect_bd_net -net dac_fifo_ad9364_0_dout_data_0 [get_bd_pins axi_ad9364/dac_data_i0] [get_bd_pins axi_ad9364/dac_data_i1] [get_bd_pins dac_fifo_ad9364_0/dout_data_0]
  connect_bd_net -net dac_fifo_ad9364_0_dout_data_1 [get_bd_pins axi_ad9364/dac_data_q0] [get_bd_pins axi_ad9364/dac_data_q1] [get_bd_pins axi_ad9364/dac_dunf] [get_bd_pins dac_fifo_ad9364_0/dout_data_1]
  connect_bd_net -net delay_clk_1 [get_bd_pins delay_clk] [get_bd_pins axi_ad9364/delay_clk]
  connect_bd_net -net din_rst_1 [get_bd_pins adc_fifo_ad9364_0/din_rst] [get_bd_pins axi_ad9364/rst] [get_bd_pins dac_fifo_ad9364_0/dout_rst]
  connect_bd_net -net dout_clk_1 [get_bd_pins dout_clk] [get_bd_pins adc_fifo_ad9364_0/dout_clk] [get_bd_pins dac_fifo_ad9364_0/din_clk] [get_bd_pins divclk_64_rst1/slowest_sync_clk]
  connect_bd_net -net dout_rstn_1 [get_bd_pins adc_fifo_ad9364_0/dout_rstn] [get_bd_pins dac_fifo_ad9364_0/din_rstn] [get_bd_pins divclk_64_rst1/peripheral_aresetn]
  connect_bd_net -net ext_reset_in_1 [get_bd_pins ext_reset_in] [get_bd_pins divclk_64_rst1/ext_reset_in]
  connect_bd_net -net s_axi_aclk_1 [get_bd_pins s_axi_aclk] [get_bd_pins axi_ad9364/s_axi_aclk]
  connect_bd_net -net s_axi_aresetn_1 [get_bd_pins s_axi_aresetn] [get_bd_pins axi_ad9364/s_axi_aresetn]
  connect_bd_net -net up_enable_1 [get_bd_pins up_enable] [get_bd_pins axi_ad9364/up_enable]
  connect_bd_net -net up_txnrx_1 [get_bd_pins up_txnrx] [get_bd_pins axi_ad9364/up_txnrx]
  connect_bd_net -net zero_sample_dout [get_bd_pins dac_fifo_ad9364_0/din_data_0] [get_bd_pins dac_fifo_ad9364_0/din_data_1] [get_bd_pins zero_sample/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: AD9361_CTRL
proc create_hier_cell_AD9361_CTRL { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_AD9361_CTRL() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi1

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi2


  # Create pins
  create_bd_pin -dir I -type clk FPGA_REF_40MHZ
  create_bd_pin -dir O -from 5 -to 0 ad9361_1_P0_N
  create_bd_pin -dir O -from 5 -to 0 ad9361_1_P0_P
  create_bd_pin -dir I -from 5 -to 0 ad9361_1_P1_N
  create_bd_pin -dir I -from 5 -to 0 ad9361_1_P1_P
  create_bd_pin -dir O -from 5 -to 0 ad9361_2_P0_N
  create_bd_pin -dir O -from 5 -to 0 ad9361_2_P0_P
  create_bd_pin -dir I -from 5 -to 0 ad9361_2_P1_N
  create_bd_pin -dir I -from 5 -to 0 ad9361_2_P1_P
  create_bd_pin -dir O -from 5 -to 0 ad9361_3_P0_N
  create_bd_pin -dir O -from 5 -to 0 ad9361_3_P0_P
  create_bd_pin -dir I -from 5 -to 0 ad9361_3_P1_N
  create_bd_pin -dir I -from 5 -to 0 ad9361_3_P1_P
  create_bd_pin -dir I ad9361_DCLK_1_N
  create_bd_pin -dir I ad9361_DCLK_1_P
  create_bd_pin -dir I ad9361_DCLK_2_N
  create_bd_pin -dir I ad9361_DCLK_2_P
  create_bd_pin -dir I ad9361_DCLK_3_N
  create_bd_pin -dir I ad9361_DCLK_3_P
  create_bd_pin -dir O ad9361_EN_1
  create_bd_pin -dir O ad9361_EN_2
  create_bd_pin -dir O ad9361_EN_3
  create_bd_pin -dir O ad9361_FB_CLK_1_N
  create_bd_pin -dir O ad9361_FB_CLK_1_P
  create_bd_pin -dir O ad9361_FB_CLK_2_N
  create_bd_pin -dir O ad9361_FB_CLK_2_P
  create_bd_pin -dir O ad9361_FB_CLK_3_N
  create_bd_pin -dir O ad9361_FB_CLK_3_P
  create_bd_pin -dir I ad9361_RX_FRAME1_N
  create_bd_pin -dir I ad9361_RX_FRAME1_P
  create_bd_pin -dir I ad9361_RX_FRAME2_N
  create_bd_pin -dir I ad9361_RX_FRAME2_P
  create_bd_pin -dir I ad9361_RX_FRAME3_N
  create_bd_pin -dir I ad9361_RX_FRAME3_P
  create_bd_pin -dir O ad9361_TXNRX_1
  create_bd_pin -dir O ad9361_TXNRX_2
  create_bd_pin -dir O ad9361_TXNRX_3
  create_bd_pin -dir O ad9361_TX_FRAME1_N
  create_bd_pin -dir O ad9361_TX_FRAME1_P
  create_bd_pin -dir O ad9361_TX_FRAME2_N
  create_bd_pin -dir O ad9361_TX_FRAME2_P
  create_bd_pin -dir O ad9361_TX_FRAME3_N
  create_bd_pin -dir O ad9361_TX_FRAME3_P
  create_bd_pin -dir O adc_valid_i0
  create_bd_pin -dir O adc_valid_i1
  create_bd_pin -dir O -from 0 -to 0 -type clk clk_out1
  create_bd_pin -dir O -from 0 -to 0 -type clk data_rate
  create_bd_pin -dir I -type clk delay_clk
  create_bd_pin -dir I -from 15 -to 0 din_data_0
  create_bd_pin -dir I -from 15 -to 0 din_data_1
  create_bd_pin -dir I -from 15 -to 0 din_data_2
  create_bd_pin -dir I -from 15 -to 0 din_data_3
  create_bd_pin -dir I -from 15 -to 0 din_data_4
  create_bd_pin -dir I -from 15 -to 0 din_data_5
  create_bd_pin -dir I -from 15 -to 0 din_data_6
  create_bd_pin -dir I -from 15 -to 0 din_data_7
  create_bd_pin -dir I -from 15 -to 0 din_data_8
  create_bd_pin -dir I -from 15 -to 0 din_data_9
  create_bd_pin -dir I -from 15 -to 0 din_data_10
  create_bd_pin -dir I -from 15 -to 0 din_data_11
  create_bd_pin -dir O -from 0 -to 0 dout
  create_bd_pin -dir O -from 15 -to 0 dout_data_0
  create_bd_pin -dir O -from 15 -to 0 dout_data_1
  create_bd_pin -dir O -from 15 -to 0 dout_data_2
  create_bd_pin -dir O -from 15 -to 0 dout_data_3
  create_bd_pin -dir O -from 15 -to 0 dout_data_4
  create_bd_pin -dir O -from 15 -to 0 dout_data_5
  create_bd_pin -dir O -from 15 -to 0 dout_data_6
  create_bd_pin -dir O -from 15 -to 0 dout_data_7
  create_bd_pin -dir O -from 15 -to 0 dout_data_8
  create_bd_pin -dir O -from 15 -to 0 dout_data_9
  create_bd_pin -dir O -from 15 -to 0 dout_data_10
  create_bd_pin -dir O -from 15 -to 0 dout_data_11
  create_bd_pin -dir I -type rst ext_reset_in
  create_bd_pin -dir O -from 0 -to 0 -type rst peripheral_aresetn1
  create_bd_pin -dir O -from 0 -to 0 -type rst peripheral_reset
  create_bd_pin -dir I -type clk s_axi_aclk
  create_bd_pin -dir I -type rst s_axi_aresetn

  # Create instance: AD9361_1
  create_hier_cell_AD9361_1 $hier_obj AD9361_1

  # Create instance: AD9361_2
  create_hier_cell_AD9361_2 $hier_obj AD9361_2

  # Create instance: AD9361_3
  create_hier_cell_AD9361_3 $hier_obj AD9361_3

  # Create instance: ad9361_clk
  create_hier_cell_ad9361_clk $hier_obj ad9361_clk

  # Create instance: const_0, and set properties
  set const_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 const_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $const_0

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins s_axi] [get_bd_intf_pins AD9361_3/s_axi]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins s_axi1] [get_bd_intf_pins AD9361_1/s_axi]
  connect_bd_intf_net -intf_net Conn3 [get_bd_intf_pins s_axi2] [get_bd_intf_pins AD9361_2/s_axi]

  # Create port connections
  connect_bd_net -net AD9361_1_ad9361_1_P0_N [get_bd_pins ad9361_1_P0_N] [get_bd_pins AD9361_1/ad9361_1_P0_N]
  connect_bd_net -net AD9361_1_ad9361_1_P0_P [get_bd_pins ad9361_1_P0_P] [get_bd_pins AD9361_1/ad9361_1_P0_P]
  connect_bd_net -net AD9361_1_ad9361_EN_1 [get_bd_pins ad9361_EN_1] [get_bd_pins AD9361_1/ad9361_EN_1]
  connect_bd_net -net AD9361_1_ad9361_FB_CLK_1_N [get_bd_pins ad9361_FB_CLK_1_N] [get_bd_pins AD9361_1/ad9361_FB_CLK_1_N]
  connect_bd_net -net AD9361_1_ad9361_FB_CLK_1_P [get_bd_pins ad9361_FB_CLK_1_P] [get_bd_pins AD9361_1/ad9361_FB_CLK_1_P]
  connect_bd_net -net AD9361_1_ad9361_TXNRX_1 [get_bd_pins ad9361_TXNRX_1] [get_bd_pins AD9361_1/ad9361_TXNRX_1]
  connect_bd_net -net AD9361_1_ad9361_TX_FRAME1_N [get_bd_pins ad9361_TX_FRAME1_N] [get_bd_pins AD9361_1/ad9361_TX_FRAME1_N]
  connect_bd_net -net AD9361_1_ad9361_TX_FRAME1_P [get_bd_pins ad9361_TX_FRAME1_P] [get_bd_pins AD9361_1/ad9361_TX_FRAME1_P]
  connect_bd_net -net AD9361_1_adc_valid_i0 [get_bd_pins adc_valid_i0] [get_bd_pins AD9361_1/adc_valid_i0]
  connect_bd_net -net AD9361_1_dout_data_0 [get_bd_pins dout_data_0] [get_bd_pins AD9361_1/dout_data_0]
  connect_bd_net -net AD9361_1_dout_data_1 [get_bd_pins dout_data_1] [get_bd_pins AD9361_1/dout_data_1]
  connect_bd_net -net AD9361_1_dout_data_2 [get_bd_pins dout_data_2] [get_bd_pins AD9361_1/dout_data_2]
  connect_bd_net -net AD9361_1_dout_data_3 [get_bd_pins dout_data_3] [get_bd_pins AD9361_1/dout_data_3]
  connect_bd_net -net AD9361_2_ad9361_2_P0_N [get_bd_pins ad9361_2_P0_N] [get_bd_pins AD9361_2/ad9361_2_P0_N]
  connect_bd_net -net AD9361_2_ad9361_2_P0_P [get_bd_pins ad9361_2_P0_P] [get_bd_pins AD9361_2/ad9361_2_P0_P]
  connect_bd_net -net AD9361_2_ad9361_EN_2 [get_bd_pins ad9361_EN_2] [get_bd_pins AD9361_2/ad9361_EN_2]
  connect_bd_net -net AD9361_2_ad9361_FB_CLK_2_N [get_bd_pins ad9361_FB_CLK_2_N] [get_bd_pins AD9361_2/ad9361_FB_CLK_2_N]
  connect_bd_net -net AD9361_2_ad9361_FB_CLK_2_P [get_bd_pins ad9361_FB_CLK_2_P] [get_bd_pins AD9361_2/ad9361_FB_CLK_2_P]
  connect_bd_net -net AD9361_2_ad9361_TXNRX_2 [get_bd_pins ad9361_TXNRX_2] [get_bd_pins AD9361_2/ad9361_TXNRX_2]
  connect_bd_net -net AD9361_2_ad9361_TX_FRAME2_N [get_bd_pins ad9361_TX_FRAME2_N] [get_bd_pins AD9361_2/ad9361_TX_FRAME2_N]
  connect_bd_net -net AD9361_2_ad9361_TX_FRAME2_P [get_bd_pins ad9361_TX_FRAME2_P] [get_bd_pins AD9361_2/ad9361_TX_FRAME2_P]
  connect_bd_net -net AD9361_2_adc_valid_i0 [get_bd_pins adc_valid_i1] [get_bd_pins AD9361_2/adc_valid_i0]
  connect_bd_net -net AD9361_2_dout_data_4 [get_bd_pins dout_data_4] [get_bd_pins AD9361_2/dout_data_4]
  connect_bd_net -net AD9361_2_dout_data_5 [get_bd_pins dout_data_5] [get_bd_pins AD9361_2/dout_data_5]
  connect_bd_net -net AD9361_2_dout_data_6 [get_bd_pins dout_data_6] [get_bd_pins AD9361_2/dout_data_6]
  connect_bd_net -net AD9361_2_dout_data_7 [get_bd_pins dout_data_7] [get_bd_pins AD9361_2/dout_data_7]
  connect_bd_net -net AD9361_3_ad9361_3_P0_N [get_bd_pins ad9361_3_P0_N] [get_bd_pins AD9361_3/ad9361_3_P0_N]
  connect_bd_net -net AD9361_3_ad9361_3_P0_P [get_bd_pins ad9361_3_P0_P] [get_bd_pins AD9361_3/ad9361_3_P0_P]
  connect_bd_net -net AD9361_3_ad9361_EN_3 [get_bd_pins ad9361_EN_3] [get_bd_pins AD9361_3/ad9361_EN_3]
  connect_bd_net -net AD9361_3_ad9361_FB_CLK_3_N [get_bd_pins ad9361_FB_CLK_3_N] [get_bd_pins AD9361_3/ad9361_FB_CLK_3_N]
  connect_bd_net -net AD9361_3_ad9361_FB_CLK_3_P [get_bd_pins ad9361_FB_CLK_3_P] [get_bd_pins AD9361_3/ad9361_FB_CLK_3_P]
  connect_bd_net -net AD9361_3_ad9361_TXNRX_3 [get_bd_pins ad9361_TXNRX_3] [get_bd_pins AD9361_3/ad9361_TXNRX_3]
  connect_bd_net -net AD9361_3_ad9361_TX_FRAME3_N [get_bd_pins ad9361_TX_FRAME3_N] [get_bd_pins AD9361_3/ad9361_TX_FRAME3_N]
  connect_bd_net -net AD9361_3_ad9361_TX_FRAME3_P [get_bd_pins ad9361_TX_FRAME3_P] [get_bd_pins AD9361_3/ad9361_TX_FRAME3_P]
  connect_bd_net -net AD9361_3_dout_data_8 [get_bd_pins dout_data_8] [get_bd_pins AD9361_3/dout_data_8]
  connect_bd_net -net AD9361_3_dout_data_9 [get_bd_pins dout_data_9] [get_bd_pins AD9361_3/dout_data_9]
  connect_bd_net -net AD9361_3_dout_data_10 [get_bd_pins dout_data_10] [get_bd_pins AD9361_3/dout_data_10]
  connect_bd_net -net AD9361_3_dout_data_11 [get_bd_pins dout_data_11] [get_bd_pins AD9361_3/dout_data_11]
  connect_bd_net -net FPGA_REF_40MHZ_1 [get_bd_pins FPGA_REF_40MHZ] [get_bd_pins ad9361_clk/FPGA_REF_40MHZ]
  connect_bd_net -net ad9361_1_P1_N_1 [get_bd_pins ad9361_1_P1_N] [get_bd_pins AD9361_1/ad9361_1_P1_N]
  connect_bd_net -net ad9361_1_P1_P_1 [get_bd_pins ad9361_1_P1_P] [get_bd_pins AD9361_1/ad9361_1_P1_P]
  connect_bd_net -net ad9361_2_P1_N_1 [get_bd_pins ad9361_2_P1_N] [get_bd_pins AD9361_2/ad9361_2_P1_N]
  connect_bd_net -net ad9361_2_P1_P_1 [get_bd_pins ad9361_2_P1_P] [get_bd_pins AD9361_2/ad9361_2_P1_P]
  connect_bd_net -net ad9361_3_P1_N_1 [get_bd_pins ad9361_3_P1_N] [get_bd_pins AD9361_3/ad9361_3_P1_N]
  connect_bd_net -net ad9361_3_P1_P_1 [get_bd_pins ad9361_3_P1_P] [get_bd_pins AD9361_3/ad9361_3_P1_P]
  connect_bd_net -net ad9361_DCLK_1_N_1 [get_bd_pins ad9361_DCLK_1_N] [get_bd_pins AD9361_1/ad9361_DCLK_1_N]
  connect_bd_net -net ad9361_DCLK_1_P_1 [get_bd_pins ad9361_DCLK_1_P] [get_bd_pins AD9361_1/ad9361_DCLK_1_P]
  connect_bd_net -net ad9361_DCLK_2_N_1 [get_bd_pins ad9361_DCLK_2_N] [get_bd_pins AD9361_2/ad9361_DCLK_2_N]
  connect_bd_net -net ad9361_DCLK_2_P_1 [get_bd_pins ad9361_DCLK_2_P] [get_bd_pins AD9361_2/ad9361_DCLK_2_P]
  connect_bd_net -net ad9361_DCLK_3_N_1 [get_bd_pins ad9361_DCLK_3_N] [get_bd_pins AD9361_3/ad9361_DCLK_3_N]
  connect_bd_net -net ad9361_DCLK_3_P_1 [get_bd_pins ad9361_DCLK_3_P] [get_bd_pins AD9361_3/ad9361_DCLK_3_P]
  connect_bd_net -net ad9361_RX_FRAME1_N_1 [get_bd_pins ad9361_RX_FRAME1_N] [get_bd_pins AD9361_1/ad9361_RX_FRAME1_N]
  connect_bd_net -net ad9361_RX_FRAME1_P_1 [get_bd_pins ad9361_RX_FRAME1_P] [get_bd_pins AD9361_1/ad9361_RX_FRAME1_P]
  connect_bd_net -net ad9361_RX_FRAME2_N_1 [get_bd_pins ad9361_RX_FRAME2_N] [get_bd_pins AD9361_2/ad9361_RX_FRAME2_N]
  connect_bd_net -net ad9361_RX_FRAME2_P_1 [get_bd_pins ad9361_RX_FRAME2_P] [get_bd_pins AD9361_2/ad9361_RX_FRAME2_P]
  connect_bd_net -net ad9361_RX_FRAME3_N_1 [get_bd_pins ad9361_RX_FRAME3_N] [get_bd_pins AD9361_3/ad9361_RX_FRAME3_N]
  connect_bd_net -net ad9361_RX_FRAME3_P_1 [get_bd_pins ad9361_RX_FRAME3_P] [get_bd_pins AD9361_3/ad9361_RX_FRAME3_P]
  connect_bd_net -net ad9361_clk_clk_out [get_bd_pins AD9361_1/dout_clk] [get_bd_pins AD9361_3/din_clk] [get_bd_pins ad9361_clk/clk_out]
  connect_bd_net -net ad9361_clk_clk_out1 [get_bd_pins clk_out1] [get_bd_pins AD9361_2/din_clk] [get_bd_pins ad9361_clk/clk_out1]
  connect_bd_net -net ad9361_clk_data_rate [get_bd_pins data_rate] [get_bd_pins ad9361_clk/sample_rate_30]
  connect_bd_net -net ad9361_clk_peripheral_reset [get_bd_pins peripheral_reset] [get_bd_pins ad9361_clk/peripheral_reset]
  connect_bd_net -net delay_clk_1 [get_bd_pins delay_clk] [get_bd_pins AD9361_1/delay_clk] [get_bd_pins AD9361_2/delay_clk] [get_bd_pins AD9361_3/delay_clk]
  connect_bd_net -net din_data_0_1 [get_bd_pins din_data_0] [get_bd_pins AD9361_2/din_data_0]
  connect_bd_net -net din_data_10_1 [get_bd_pins din_data_10] [get_bd_pins AD9361_1/din_data_10]
  connect_bd_net -net din_data_11_1 [get_bd_pins din_data_11] [get_bd_pins AD9361_1/din_data_11]
  connect_bd_net -net din_data_1_1 [get_bd_pins din_data_1] [get_bd_pins AD9361_2/din_data_1]
  connect_bd_net -net din_data_2_1 [get_bd_pins din_data_2] [get_bd_pins AD9361_1/din_data_2]
  connect_bd_net -net din_data_3_1 [get_bd_pins din_data_3] [get_bd_pins AD9361_1/din_data_3]
  connect_bd_net -net din_data_4_1 [get_bd_pins din_data_4] [get_bd_pins AD9361_2/din_data_4]
  connect_bd_net -net din_data_5_1 [get_bd_pins din_data_5] [get_bd_pins AD9361_2/din_data_5]
  connect_bd_net -net din_data_6_1 [get_bd_pins din_data_6] [get_bd_pins AD9361_3/din_data_6]
  connect_bd_net -net din_data_7_1 [get_bd_pins din_data_7] [get_bd_pins AD9361_3/din_data_7]
  connect_bd_net -net din_data_8_1 [get_bd_pins din_data_8] [get_bd_pins AD9361_3/din_data_8]
  connect_bd_net -net din_data_9_1 [get_bd_pins din_data_9] [get_bd_pins AD9361_3/din_data_9]
  connect_bd_net -net din_rstn_1 [get_bd_pins AD9361_1/dout_rstn] [get_bd_pins AD9361_3/din_rstn] [get_bd_pins ad9361_clk/peripheral_aresetn]
  connect_bd_net -net din_rstn_2 [get_bd_pins peripheral_aresetn1] [get_bd_pins AD9361_2/din_rstn] [get_bd_pins ad9361_clk/peripheral_aresetn1]
  connect_bd_net -net ext_reset_in_1 [get_bd_pins ext_reset_in] [get_bd_pins ad9361_clk/ext_reset_in]
  connect_bd_net -net s_axi_aclk_1 [get_bd_pins s_axi_aclk] [get_bd_pins AD9361_1/s_axi_aclk] [get_bd_pins AD9361_2/s_axi_aclk] [get_bd_pins AD9361_3/s_axi_aclk]
  connect_bd_net -net s_axi_aresetn_1 [get_bd_pins s_axi_aresetn] [get_bd_pins AD9361_1/s_axi_aresetn] [get_bd_pins AD9361_2/s_axi_aresetn] [get_bd_pins AD9361_3/s_axi_aresetn]
  connect_bd_net -net up_txnrx_1 [get_bd_pins dout] [get_bd_pins AD9361_1/up_enable] [get_bd_pins AD9361_1/up_txnrx] [get_bd_pins AD9361_2/up_enable] [get_bd_pins AD9361_2/up_txnrx] [get_bd_pins AD9361_3/up_enable] [get_bd_pins AD9361_3/up_txnrx] [get_bd_pins const_0/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set AXI_RX_CLK_OUT [ create_bd_port -dir O AXI_RX_CLK_OUT ]
  set AXI_RX_DATA_OUT [ create_bd_port -dir O -from 16 -to 0 AXI_RX_DATA_OUT ]
  set AXI_TX_CLK_IN [ create_bd_port -dir I AXI_TX_CLK_IN ]
  set AXI_TX_DATA_IN [ create_bd_port -dir I -from 16 -to 0 AXI_TX_DATA_IN ]
  set FPGA_REF_40MHZ [ create_bd_port -dir I FPGA_REF_40MHZ ]
  set LED1 [ create_bd_port -dir O -from 0 -to 0 LED1 ]
  set LED2 [ create_bd_port -dir O -from 0 -to 0 LED2 ]
  set LED3 [ create_bd_port -dir O -from 0 -to 0 LED3 ]
  set PIN_0 [ create_bd_port -dir O PIN_0 ]
  set PIN_1 [ create_bd_port -dir O PIN_1 ]
  set PIN_2 [ create_bd_port -dir O PIN_2 ]
  set ad9361_1_P0_N [ create_bd_port -dir O -from 5 -to 0 ad9361_1_P0_N ]
  set ad9361_1_P0_P [ create_bd_port -dir O -from 5 -to 0 ad9361_1_P0_P ]
  set ad9361_1_P1_N [ create_bd_port -dir I -from 5 -to 0 ad9361_1_P1_N ]
  set ad9361_1_P1_P [ create_bd_port -dir I -from 5 -to 0 ad9361_1_P1_P ]
  set ad9361_2_P0_N [ create_bd_port -dir O -from 5 -to 0 ad9361_2_P0_N ]
  set ad9361_2_P0_P [ create_bd_port -dir O -from 5 -to 0 ad9361_2_P0_P ]
  set ad9361_2_P1_N [ create_bd_port -dir I -from 5 -to 0 ad9361_2_P1_N ]
  set ad9361_2_P1_P [ create_bd_port -dir I -from 5 -to 0 ad9361_2_P1_P ]
  set ad9361_3_P0_N [ create_bd_port -dir O -from 5 -to 0 ad9361_3_P0_N ]
  set ad9361_3_P0_P [ create_bd_port -dir O -from 5 -to 0 ad9361_3_P0_P ]
  set ad9361_3_P1_N [ create_bd_port -dir I -from 5 -to 0 ad9361_3_P1_N ]
  set ad9361_3_P1_P [ create_bd_port -dir I -from 5 -to 0 ad9361_3_P1_P ]
  set ad9361_DCLK_1_N [ create_bd_port -dir I ad9361_DCLK_1_N ]
  set ad9361_DCLK_1_P [ create_bd_port -dir I ad9361_DCLK_1_P ]
  set ad9361_DCLK_2_N [ create_bd_port -dir I ad9361_DCLK_2_N ]
  set ad9361_DCLK_2_P [ create_bd_port -dir I ad9361_DCLK_2_P ]
  set ad9361_DCLK_3_N [ create_bd_port -dir I ad9361_DCLK_3_N ]
  set ad9361_DCLK_3_P [ create_bd_port -dir I ad9361_DCLK_3_P ]
  set ad9361_EN_1 [ create_bd_port -dir O -from 0 -to 0 ad9361_EN_1 ]
  set ad9361_EN_2 [ create_bd_port -dir O -from 0 -to 0 ad9361_EN_2 ]
  set ad9361_EN_3 [ create_bd_port -dir O ad9361_EN_3 ]
  set ad9361_EN_AGC_1 [ create_bd_port -dir O -from 0 -to 0 ad9361_EN_AGC_1 ]
  set ad9361_EN_AGC_2 [ create_bd_port -dir O -from 0 -to 0 ad9361_EN_AGC_2 ]
  set ad9361_EN_AGC_3 [ create_bd_port -dir O -from 0 -to 0 ad9361_EN_AGC_3 ]
  set ad9361_FB_CLK_1_N [ create_bd_port -dir O ad9361_FB_CLK_1_N ]
  set ad9361_FB_CLK_1_P [ create_bd_port -dir O ad9361_FB_CLK_1_P ]
  set ad9361_FB_CLK_2_N [ create_bd_port -dir O ad9361_FB_CLK_2_N ]
  set ad9361_FB_CLK_2_P [ create_bd_port -dir O ad9361_FB_CLK_2_P ]
  set ad9361_FB_CLK_3_N [ create_bd_port -dir O ad9361_FB_CLK_3_N ]
  set ad9361_FB_CLK_3_P [ create_bd_port -dir O ad9361_FB_CLK_3_P ]
  set ad9361_RESET_1 [ create_bd_port -dir O -from 0 -to 0 ad9361_RESET_1 ]
  set ad9361_RESET_2 [ create_bd_port -dir O -from 0 -to 0 ad9361_RESET_2 ]
  set ad9361_RESET_3 [ create_bd_port -dir O -from 0 -to 0 ad9361_RESET_3 ]
  set ad9361_RX_FRAME1_N [ create_bd_port -dir I ad9361_RX_FRAME1_N ]
  set ad9361_RX_FRAME1_P [ create_bd_port -dir I ad9361_RX_FRAME1_P ]
  set ad9361_RX_FRAME2_N [ create_bd_port -dir I ad9361_RX_FRAME2_N ]
  set ad9361_RX_FRAME2_P [ create_bd_port -dir I ad9361_RX_FRAME2_P ]
  set ad9361_RX_FRAME3_N [ create_bd_port -dir I ad9361_RX_FRAME3_N ]
  set ad9361_RX_FRAME3_P [ create_bd_port -dir I ad9361_RX_FRAME3_P ]
  set ad9361_SPI_CLK_1 [ create_bd_port -dir O ad9361_SPI_CLK_1 ]
  set ad9361_SPI_CLK_2 [ create_bd_port -dir O ad9361_SPI_CLK_2 ]
  set ad9361_SPI_CLK_3 [ create_bd_port -dir O ad9361_SPI_CLK_3 ]
  set ad9361_SPI_CS_1 [ create_bd_port -dir O -from 0 -to 0 ad9361_SPI_CS_1 ]
  set ad9361_SPI_CS_2 [ create_bd_port -dir O -from 0 -to 0 ad9361_SPI_CS_2 ]
  set ad9361_SPI_CS_3 [ create_bd_port -dir O -from 0 -to 0 ad9361_SPI_CS_3 ]
  set ad9361_SPI_DI_1 [ create_bd_port -dir O ad9361_SPI_DI_1 ]
  set ad9361_SPI_DI_2 [ create_bd_port -dir O ad9361_SPI_DI_2 ]
  set ad9361_SPI_DI_3 [ create_bd_port -dir O ad9361_SPI_DI_3 ]
  set ad9361_SPI_DO_1 [ create_bd_port -dir I ad9361_SPI_DO_1 ]
  set ad9361_SPI_DO_2 [ create_bd_port -dir I ad9361_SPI_DO_2 ]
  set ad9361_SPI_DO_3 [ create_bd_port -dir I ad9361_SPI_DO_3 ]
  set ad9361_TXNRX_1 [ create_bd_port -dir O -from 0 -to 0 ad9361_TXNRX_1 ]
  set ad9361_TXNRX_2 [ create_bd_port -dir O -from 0 -to 0 ad9361_TXNRX_2 ]
  set ad9361_TXNRX_3 [ create_bd_port -dir O ad9361_TXNRX_3 ]
  set ad9361_TX_FRAME1_N [ create_bd_port -dir O ad9361_TX_FRAME1_N ]
  set ad9361_TX_FRAME1_P [ create_bd_port -dir O ad9361_TX_FRAME1_P ]
  set ad9361_TX_FRAME2_N [ create_bd_port -dir O ad9361_TX_FRAME2_N ]
  set ad9361_TX_FRAME2_P [ create_bd_port -dir O ad9361_TX_FRAME2_P ]
  set ad9361_TX_FRAME3_N [ create_bd_port -dir O ad9361_TX_FRAME3_N ]
  set ad9361_TX_FRAME3_P [ create_bd_port -dir O ad9361_TX_FRAME3_P ]
  set ad9364_DCLK_N [ create_bd_port -dir I ad9364_DCLK_N ]
  set ad9364_DCLK_P [ create_bd_port -dir I ad9364_DCLK_P ]
  set ad9364_EN [ create_bd_port -dir O ad9364_EN ]
  set ad9364_EN_AGC [ create_bd_port -dir O -from 0 -to 0 ad9364_EN_AGC ]
  set ad9364_FB_CLK_N [ create_bd_port -dir O ad9364_FB_CLK_N ]
  set ad9364_FB_CLK_P [ create_bd_port -dir O ad9364_FB_CLK_P ]
  set ad9364_P0_N [ create_bd_port -dir O -from 5 -to 0 ad9364_P0_N ]
  set ad9364_P0_P [ create_bd_port -dir O -from 5 -to 0 ad9364_P0_P ]
  set ad9364_P1_N [ create_bd_port -dir I -from 5 -to 0 ad9364_P1_N ]
  set ad9364_P1_P [ create_bd_port -dir I -from 5 -to 0 ad9364_P1_P ]
  set ad9364_RESET [ create_bd_port -dir O -from 0 -to 0 ad9364_RESET ]
  set ad9364_RX_FRAME_N [ create_bd_port -dir I ad9364_RX_FRAME_N ]
  set ad9364_RX_FRAME_P [ create_bd_port -dir I ad9364_RX_FRAME_P ]
  set ad9364_SPI_CLK [ create_bd_port -dir O ad9364_SPI_CLK ]
  set ad9364_SPI_CS [ create_bd_port -dir O -from 0 -to 0 ad9364_SPI_CS ]
  set ad9364_SPI_DI [ create_bd_port -dir O ad9364_SPI_DI ]
  set ad9364_SPI_DO [ create_bd_port -dir I ad9364_SPI_DO ]
  set ad9364_TXNRX [ create_bd_port -dir O ad9364_TXNRX ]
  set ad9364_TX_FRAME_N [ create_bd_port -dir O ad9364_TX_FRAME_N ]
  set ad9364_TX_FRAME_P [ create_bd_port -dir O ad9364_TX_FRAME_P ]
  set fpga_28v_en_link1 [ create_bd_port -dir O fpga_28v_en_link1 ]
  set fpga_28v_en_link2 [ create_bd_port -dir O fpga_28v_en_link2 ]
  set fpga_28v_en_service1 [ create_bd_port -dir O fpga_28v_en_service1 ]
  set fpga_28v_en_service2 [ create_bd_port -dir O fpga_28v_en_service2 ]
  set fpga_28v_en_service3 [ create_bd_port -dir O fpga_28v_en_service3 ]
  set fpga_28v_en_service4 [ create_bd_port -dir O fpga_28v_en_service4 ]
  set fpga_5v_en_link [ create_bd_port -dir O fpga_5v_en_link ]
  set som_28v_en_link1 [ create_bd_port -dir I som_28v_en_link1 ]
  set som_28v_en_link2 [ create_bd_port -dir I som_28v_en_link2 ]
  set som_28v_en_service1 [ create_bd_port -dir I som_28v_en_service1 ]
  set som_28v_en_service2 [ create_bd_port -dir I som_28v_en_service2 ]
  set som_28v_en_service3 [ create_bd_port -dir I som_28v_en_service3 ]
  set som_28v_en_service4 [ create_bd_port -dir I som_28v_en_service4 ]
  set som_5v_en_link [ create_bd_port -dir I som_5v_en_link ]
  set spi_cs_n_0 [ create_bd_port -dir O spi_cs_n_0 ]
  set spi_cs_n_1 [ create_bd_port -dir O spi_cs_n_1 ]
  set spi_miso_0 [ create_bd_port -dir I spi_miso_0 ]
  set spi_miso_1 [ create_bd_port -dir I spi_miso_1 ]
  set spi_mosi_0 [ create_bd_port -dir O spi_mosi_0 ]
  set spi_mosi_1 [ create_bd_port -dir O spi_mosi_1 ]
  set spi_sclk_0 [ create_bd_port -dir O spi_sclk_0 ]
  set spi_sclk_1 [ create_bd_port -dir O spi_sclk_1 ]

  # Create instance: AD9361_CTRL
  create_hier_cell_AD9361_CTRL [current_bd_instance .] AD9361_CTRL

  # Create instance: AD9364
  create_hier_cell_AD9364 [current_bd_instance .] AD9364

  # Create instance: AXI_Peripheral
  create_hier_cell_AXI_Peripheral [current_bd_instance .] AXI_Peripheral

  # Create instance: CLK_AXI
  create_hier_cell_CLK_AXI [current_bd_instance .] CLK_AXI

  # Create instance: Control_from_SOM_0, and set properties
  set Control_from_SOM_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:Control_from_SOM:1.0 Control_from_SOM_0 ]

  # Create instance: Current_turning_off_0, and set properties
  set Current_turning_off_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:Current_turning_off:1.0 Current_turning_off_0 ]

  # Create instance: IP_sync_0, and set properties
  set IP_sync_0 [ create_bd_cell -type ip -vlnv tor.org:user:IP_sync:1.0 IP_sync_0 ]
  set_property -dict [ list \
   CONFIG.pDAT_Num_corr {1024} \
 ] $IP_sync_0

  # Create instance: SPI_MOD
  create_hier_cell_SPI_MOD [current_bd_instance .] SPI_MOD

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_0 ]
  set_property -dict [ list \
   CONFIG.AXI_DRP {false} \
   CONFIG.CLKIN1_JITTER_PS {100.000} \
   CONFIG.CLKIN1_UI_JITTER {100.000} \
   CONFIG.CLKIN2_JITTER_PS {100.000} \
   CONFIG.CLKIN2_UI_JITTER {100.000} \
   CONFIG.CLKOUT1_JITTER {245.118} \
   CONFIG.CLKOUT1_PHASE_ERROR {208.332} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {30.72} \
   CONFIG.JITTER_OPTIONS {PS} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {32.000} \
   CONFIG.MMCM_CLKIN1_PERIOD {32.552} \
   CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {32.000} \
   CONFIG.MMCM_DIVCLK_DIVIDE {1} \
   CONFIG.MMCM_REF_JITTER1 {0.003} \
   CONFIG.MMCM_REF_JITTER2 {0.010} \
   CONFIG.PHASE_DUTY_CONFIG {false} \
   CONFIG.PRIM_IN_FREQ {30.720} \
   CONFIG.USE_DYN_PHASE_SHIFT {false} \
   CONFIG.USE_DYN_RECONFIG {true} \
 ] $clk_wiz_0

  # Create instance: mqc_t_0, and set properties
  set block_name mqc_t
  set block_cell_name mqc_t_0
  if { [catch {set mqc_t_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $mqc_t_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: xlconcat_1, and set properties
  set xlconcat_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_1 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {16} \
   CONFIG.IN1_WIDTH {16} \
 ] $xlconcat_1

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0xE007} \
   CONFIG.CONST_WIDTH {32} \
 ] $xlconstant_0

  # Create interface connections
  connect_bd_intf_net -intf_net AXI_Peripheral_M00_AXI [get_bd_intf_pins AD9361_CTRL/s_axi2] [get_bd_intf_pins AXI_Peripheral/M00_AXI]
  connect_bd_intf_net -intf_net AXI_Peripheral_M01_AXI [get_bd_intf_pins AD9361_CTRL/s_axi] [get_bd_intf_pins AXI_Peripheral/M01_AXI]
  connect_bd_intf_net -intf_net AXI_Peripheral_M02_AXI [get_bd_intf_pins AD9361_CTRL/s_axi1] [get_bd_intf_pins AXI_Peripheral/M02_AXI]
  connect_bd_intf_net -intf_net AXI_Peripheral_M03_AXI [get_bd_intf_pins AD9364/s_axi] [get_bd_intf_pins AXI_Peripheral/M03_AXI]
  connect_bd_intf_net -intf_net AXI_Peripheral_M04_AXI [get_bd_intf_pins AXI_Peripheral/M04_AXI] [get_bd_intf_pins Control_from_SOM_0/S00_AXI]
  connect_bd_intf_net -intf_net AXI_Peripheral_M06_AXI [get_bd_intf_pins AXI_Peripheral/M06_AXI] [get_bd_intf_pins SPI_MOD/AXI_LITE]
  connect_bd_intf_net -intf_net AXI_Peripheral_M10_AXI [get_bd_intf_pins AXI_Peripheral/M10_AXI] [get_bd_intf_pins IP_sync_0/S00_AXI]
  connect_bd_intf_net -intf_net AXI_Peripheral_M12_AXI [get_bd_intf_pins AXI_Peripheral/M12_AXI] [get_bd_intf_pins clk_wiz_0/s_axi_lite]
  connect_bd_intf_net -intf_net AXI_Peripheral_M14_AXI [get_bd_intf_pins AXI_Peripheral/M14_AXI] [get_bd_intf_pins Current_turning_off_0/S00_AXI]

  # Create port connections
  connect_bd_net -net AD9361_CTRL_clk_out1 [get_bd_pins AD9361_CTRL/clk_out1] [get_bd_pins clk_wiz_0/clk_in1] [get_bd_pins mqc_t_0/iclk_dsp]
  connect_bd_net -net AD9361_CTRL_dout_data_4 [get_bd_pins AD9361_CTRL/dout_data_4] [get_bd_pins IP_sync_0/sync_idat_re] [get_bd_pins xlconcat_1/In0]
  connect_bd_net -net AD9361_CTRL_dout_data_5 [get_bd_pins AD9361_CTRL/dout_data_5] [get_bd_pins IP_sync_0/sync_idat_im] [get_bd_pins xlconcat_1/In1]
  connect_bd_net -net AD9361_CTRL_peripheral_aresetn1 [get_bd_pins AD9361_CTRL/peripheral_aresetn1] [get_bd_pins IP_sync_0/sync_ireset] [get_bd_pins mqc_t_0/ireset]
  connect_bd_net -net AD9361_ctrl_data_rate [get_bd_pins AD9361_CTRL/data_rate] [get_bd_pins AD9364/dout_clk] [get_bd_pins AXI_Peripheral/fifo_wr_clk]
  connect_bd_net -net AD9364_ad9361_FB_CLK_P [get_bd_ports ad9364_FB_CLK_P] [get_bd_pins AD9364/ad9361_FB_CLK_P]
  connect_bd_net -net AD9364_ad9364_EN [get_bd_ports ad9364_EN] [get_bd_pins AD9364/ad9364_EN]
  connect_bd_net -net AD9364_ad9364_FB_CLK_N [get_bd_ports ad9364_FB_CLK_N] [get_bd_pins AD9364/ad9364_FB_CLK_N]
  connect_bd_net -net AD9364_ad9364_P0_N [get_bd_ports ad9364_P0_N] [get_bd_pins AD9364/ad9364_P0_N]
  connect_bd_net -net AD9364_ad9364_P0_P [get_bd_ports ad9364_P0_P] [get_bd_pins AD9364/ad9364_P0_P]
  connect_bd_net -net AD9364_ad9364_TXNRX [get_bd_ports ad9364_TXNRX] [get_bd_pins AD9364/ad9364_TXNRX]
  connect_bd_net -net AD9364_ad9364_TX_FRAME_N1 [get_bd_ports ad9364_TX_FRAME_N] [get_bd_pins AD9364/ad9364_TX_FRAME_N1]
  connect_bd_net -net AD9364_ad9364_TX_FRAME_P1 [get_bd_ports ad9364_TX_FRAME_P] [get_bd_pins AD9364/ad9364_TX_FRAME_P1]
  connect_bd_net -net AXI_Peripheral_AXI_RX_CLK_OUT [get_bd_ports AXI_RX_CLK_OUT] [get_bd_pins AXI_Peripheral/AXI_RX_CLK_OUT]
  connect_bd_net -net AXI_Peripheral_AXI_RX_DATA_OUT [get_bd_ports AXI_RX_DATA_OUT] [get_bd_pins AXI_Peripheral/AXI_RX_DATA_OUT]
  connect_bd_net -net AXI_Peripheral_fifo_wr_xfer_req [get_bd_pins AXI_Peripheral/fifo_wr_xfer_req] [get_bd_pins mqc_t_0/isync_cpack]
  connect_bd_net -net AXI_TX_CLK_IN_1 [get_bd_ports AXI_TX_CLK_IN] [get_bd_pins AXI_Peripheral/AXI_TX_CLK_IN]
  connect_bd_net -net AXI_TX_DATA_IN_1 [get_bd_ports AXI_TX_DATA_IN] [get_bd_pins AXI_Peripheral/AXI_TX_DATA_IN]
  connect_bd_net -net Control_from_SOM_0_ad9361_1_en_agc [get_bd_ports ad9361_EN_AGC_1] [get_bd_pins Control_from_SOM_0/ad9361_1_en_agc]
  connect_bd_net -net Control_from_SOM_0_ad9361_1_reset [get_bd_ports ad9361_RESET_1] [get_bd_pins Control_from_SOM_0/ad9361_1_reset]
  connect_bd_net -net Control_from_SOM_0_ad9361_2_en_agc [get_bd_ports ad9361_EN_AGC_2] [get_bd_pins Control_from_SOM_0/ad9361_2_en_agc]
  connect_bd_net -net Control_from_SOM_0_ad9361_2_reset [get_bd_ports ad9361_RESET_2] [get_bd_pins Control_from_SOM_0/ad9361_2_reset]
  connect_bd_net -net Control_from_SOM_0_ad9361_3_en_agc [get_bd_ports ad9361_EN_AGC_3] [get_bd_pins Control_from_SOM_0/ad9361_3_en_agc]
  connect_bd_net -net Control_from_SOM_0_ad9361_3_reset [get_bd_ports ad9361_RESET_3] [get_bd_pins Control_from_SOM_0/ad9361_3_reset]
  connect_bd_net -net Control_from_SOM_0_ad9364_en_agc [get_bd_ports ad9364_EN_AGC] [get_bd_pins Control_from_SOM_0/ad9364_en_agc]
  connect_bd_net -net Control_from_SOM_0_ad9364_reset [get_bd_ports ad9364_RESET] [get_bd_pins Control_from_SOM_0/ad9364_reset]
  connect_bd_net -net Current_turning_off_0_fpga_en_28v_l1 [get_bd_ports fpga_28v_en_link1] [get_bd_pins Current_turning_off_0/fpga_en_28v_l1]
  connect_bd_net -net Current_turning_off_0_fpga_en_28v_l2 [get_bd_ports fpga_28v_en_link2] [get_bd_pins Current_turning_off_0/fpga_en_28v_l2]
  connect_bd_net -net Current_turning_off_0_fpga_en_28v_s1 [get_bd_ports fpga_28v_en_service1] [get_bd_pins Current_turning_off_0/fpga_en_28v_s1]
  connect_bd_net -net Current_turning_off_0_fpga_en_28v_s2 [get_bd_ports fpga_28v_en_service2] [get_bd_pins Current_turning_off_0/fpga_en_28v_s2]
  connect_bd_net -net Current_turning_off_0_fpga_en_28v_s3 [get_bd_ports fpga_28v_en_service3] [get_bd_pins Current_turning_off_0/fpga_en_28v_s3]
  connect_bd_net -net Current_turning_off_0_fpga_en_28v_s4 [get_bd_ports fpga_28v_en_service4] [get_bd_pins Current_turning_off_0/fpga_en_28v_s4]
  connect_bd_net -net Current_turning_off_0_fpga_en_5v_s [get_bd_ports fpga_5v_en_link] [get_bd_pins Current_turning_off_0/fpga_en_5v_s]
  connect_bd_net -net Current_turning_off_0_spi_cs_n_0 [get_bd_ports spi_cs_n_0] [get_bd_pins Current_turning_off_0/spi_cs_n_0]
  connect_bd_net -net Current_turning_off_0_spi_cs_n_1 [get_bd_ports spi_cs_n_1] [get_bd_pins Current_turning_off_0/spi_cs_n_1]
  connect_bd_net -net Current_turning_off_0_spi_mosi_0 [get_bd_ports spi_mosi_0] [get_bd_pins Current_turning_off_0/spi_mosi_0]
  connect_bd_net -net Current_turning_off_0_spi_mosi_1 [get_bd_ports spi_mosi_1] [get_bd_pins Current_turning_off_0/spi_mosi_1]
  connect_bd_net -net Current_turning_off_0_spi_sclk_0 [get_bd_ports spi_sclk_0] [get_bd_pins Current_turning_off_0/spi_sclk_0]
  connect_bd_net -net Current_turning_off_0_spi_sclk_1 [get_bd_ports spi_sclk_1] [get_bd_pins Current_turning_off_0/spi_sclk_1]
  connect_bd_net -net DSP_ad9361_1_P0_N [get_bd_ports ad9361_1_P0_N] [get_bd_pins AD9361_CTRL/ad9361_1_P0_N]
  connect_bd_net -net DSP_ad9361_1_P0_P [get_bd_ports ad9361_1_P0_P] [get_bd_pins AD9361_CTRL/ad9361_1_P0_P]
  connect_bd_net -net DSP_ad9361_2_P0_N [get_bd_ports ad9361_2_P0_N] [get_bd_pins AD9361_CTRL/ad9361_2_P0_N]
  connect_bd_net -net DSP_ad9361_2_P0_P [get_bd_ports ad9361_2_P0_P] [get_bd_pins AD9361_CTRL/ad9361_2_P0_P]
  connect_bd_net -net DSP_ad9361_3_P0_N [get_bd_ports ad9361_3_P0_N] [get_bd_pins AD9361_CTRL/ad9361_3_P0_N]
  connect_bd_net -net DSP_ad9361_3_P0_P [get_bd_ports ad9361_3_P0_P] [get_bd_pins AD9361_CTRL/ad9361_3_P0_P]
  connect_bd_net -net DSP_ad9361_EN_1 [get_bd_ports ad9361_EN_1] [get_bd_pins AD9361_CTRL/ad9361_EN_1]
  connect_bd_net -net DSP_ad9361_EN_2 [get_bd_ports ad9361_EN_2] [get_bd_pins AD9361_CTRL/ad9361_EN_2]
  connect_bd_net -net DSP_ad9361_EN_3 [get_bd_ports ad9361_EN_3] [get_bd_pins AD9361_CTRL/ad9361_EN_3]
  connect_bd_net -net DSP_ad9361_FB_CLK_1_N [get_bd_ports ad9361_FB_CLK_1_N] [get_bd_pins AD9361_CTRL/ad9361_FB_CLK_1_N]
  connect_bd_net -net DSP_ad9361_FB_CLK_1_P [get_bd_ports ad9361_FB_CLK_1_P] [get_bd_pins AD9361_CTRL/ad9361_FB_CLK_1_P]
  connect_bd_net -net DSP_ad9361_FB_CLK_2_N [get_bd_ports ad9361_FB_CLK_2_N] [get_bd_pins AD9361_CTRL/ad9361_FB_CLK_2_N]
  connect_bd_net -net DSP_ad9361_FB_CLK_2_P [get_bd_ports ad9361_FB_CLK_2_P] [get_bd_pins AD9361_CTRL/ad9361_FB_CLK_2_P]
  connect_bd_net -net DSP_ad9361_FB_CLK_3_N [get_bd_ports ad9361_FB_CLK_3_N] [get_bd_pins AD9361_CTRL/ad9361_FB_CLK_3_N]
  connect_bd_net -net DSP_ad9361_FB_CLK_3_P [get_bd_ports ad9361_FB_CLK_3_P] [get_bd_pins AD9361_CTRL/ad9361_FB_CLK_3_P]
  connect_bd_net -net DSP_ad9361_TXNRX_1 [get_bd_ports ad9361_TXNRX_1] [get_bd_pins AD9361_CTRL/ad9361_TXNRX_1]
  connect_bd_net -net DSP_ad9361_TXNRX_2 [get_bd_ports ad9361_TXNRX_2] [get_bd_pins AD9361_CTRL/ad9361_TXNRX_2]
  connect_bd_net -net DSP_ad9361_TXNRX_3 [get_bd_ports ad9361_TXNRX_3] [get_bd_pins AD9361_CTRL/ad9361_TXNRX_3]
  connect_bd_net -net DSP_ad9361_TX_FRAME1_N [get_bd_ports ad9361_TX_FRAME1_N] [get_bd_pins AD9361_CTRL/ad9361_TX_FRAME1_N]
  connect_bd_net -net DSP_ad9361_TX_FRAME1_P [get_bd_ports ad9361_TX_FRAME1_P] [get_bd_pins AD9361_CTRL/ad9361_TX_FRAME1_P]
  connect_bd_net -net DSP_ad9361_TX_FRAME2_N [get_bd_ports ad9361_TX_FRAME2_N] [get_bd_pins AD9361_CTRL/ad9361_TX_FRAME2_N]
  connect_bd_net -net DSP_ad9361_TX_FRAME2_P [get_bd_ports ad9361_TX_FRAME2_P] [get_bd_pins AD9361_CTRL/ad9361_TX_FRAME2_P]
  connect_bd_net -net DSP_ad9361_TX_FRAME3_N [get_bd_ports ad9361_TX_FRAME3_N] [get_bd_pins AD9361_CTRL/ad9361_TX_FRAME3_N]
  connect_bd_net -net DSP_ad9361_TX_FRAME3_P [get_bd_ports ad9361_TX_FRAME3_P] [get_bd_pins AD9361_CTRL/ad9361_TX_FRAME3_P]
  connect_bd_net -net Decoder_SPI_0_num_cs_0 [get_bd_ports ad9361_SPI_CS_1] [get_bd_pins SPI_MOD/ad9361_SPI_CS_1]
  connect_bd_net -net Decoder_SPI_0_num_cs_1 [get_bd_ports ad9361_SPI_CS_2] [get_bd_pins SPI_MOD/ad9361_SPI_CS_2]
  connect_bd_net -net Decoder_SPI_0_num_cs_2 [get_bd_ports ad9361_SPI_CS_3] [get_bd_pins SPI_MOD/ad9361_SPI_CS_3]
  connect_bd_net -net Decoder_SPI_0_num_cs_3 [get_bd_ports ad9364_SPI_CS] [get_bd_pins SPI_MOD/ad9364_SPI_CS]
  connect_bd_net -net FPGA_REF_40MHZ_1 [get_bd_ports FPGA_REF_40MHZ] [get_bd_pins CLK_AXI/FPGA_REF_40MHZ]
  connect_bd_net -net IP_sync_0_LED_en [get_bd_ports LED1] [get_bd_pins IP_sync_0/LED_en]
  connect_bd_net -net IP_sync_0_sync_odat_im [get_bd_pins IP_sync_0/sync_odat_im] [get_bd_pins mqc_t_0/idata_im]
  connect_bd_net -net IP_sync_0_sync_odat_re [get_bd_pins IP_sync_0/sync_odat_re] [get_bd_pins mqc_t_0/idata_re]
  connect_bd_net -net IP_sync_0_sync_osop [get_bd_ports PIN_0] [get_bd_pins IP_sync_0/sync_osop]
  connect_bd_net -net IP_sync_0_sync_osop_buff [get_bd_pins IP_sync_0/sync_osop_buff] [get_bd_pins mqc_t_0/isig_tcorr]
  connect_bd_net -net IP_sync_0_sync_rdy_wr_buff [get_bd_pins IP_sync_0/sync_rdy_wr_buff] [get_bd_pins mqc_t_0/iready_corr_wr]
  connect_bd_net -net IP_sync_0_sync_str_frame [get_bd_ports PIN_1] [get_bd_pins IP_sync_0/sync_str_frame]
  connect_bd_net -net IP_sync_0_sync_trh_hold [get_bd_ports LED3] [get_bd_pins IP_sync_0/sync_trh_hold]
  connect_bd_net -net IP_sync_0_sync_val_osop [get_bd_ports PIN_2] [get_bd_pins IP_sync_0/sync_val_osop]
  connect_bd_net -net IP_sync_0_sync_vrf_oval [get_bd_ports LED2] [get_bd_pins IP_sync_0/sync_vrf_oval]
  connect_bd_net -net Net [get_bd_pins IP_sync_0/sync_iclk] [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins mqc_t_0/iclk_lte]
  connect_bd_net -net SPI_MOD_ip2intc_irpt [get_bd_pins AXI_Peripheral/In0] [get_bd_pins SPI_MOD/ip2intc_irpt]
  connect_bd_net -net ad9361_1_P1_N_1 [get_bd_ports ad9361_1_P1_N] [get_bd_pins AD9361_CTRL/ad9361_1_P1_N]
  connect_bd_net -net ad9361_1_P1_P_1 [get_bd_ports ad9361_1_P1_P] [get_bd_pins AD9361_CTRL/ad9361_1_P1_P]
  connect_bd_net -net ad9361_2_P1_N_1 [get_bd_ports ad9361_2_P1_N] [get_bd_pins AD9361_CTRL/ad9361_2_P1_N]
  connect_bd_net -net ad9361_2_P1_P_1 [get_bd_ports ad9361_2_P1_P] [get_bd_pins AD9361_CTRL/ad9361_2_P1_P]
  connect_bd_net -net ad9361_3_P1_N_1 [get_bd_ports ad9361_3_P1_N] [get_bd_pins AD9361_CTRL/ad9361_3_P1_N]
  connect_bd_net -net ad9361_3_P1_P_1 [get_bd_ports ad9361_3_P1_P] [get_bd_pins AD9361_CTRL/ad9361_3_P1_P]
  connect_bd_net -net ad9361_DCLK_1_N_1 [get_bd_ports ad9361_DCLK_1_N] [get_bd_pins AD9361_CTRL/ad9361_DCLK_1_N]
  connect_bd_net -net ad9361_DCLK_1_P_1 [get_bd_ports ad9361_DCLK_1_P] [get_bd_pins AD9361_CTRL/ad9361_DCLK_1_P]
  connect_bd_net -net ad9361_DCLK_2_N_1 [get_bd_ports ad9361_DCLK_2_N] [get_bd_pins AD9361_CTRL/ad9361_DCLK_2_N]
  connect_bd_net -net ad9361_DCLK_2_P_1 [get_bd_ports ad9361_DCLK_2_P] [get_bd_pins AD9361_CTRL/ad9361_DCLK_2_P]
  connect_bd_net -net ad9361_DCLK_3_N_1 [get_bd_ports ad9361_DCLK_3_N] [get_bd_pins AD9361_CTRL/ad9361_DCLK_3_N]
  connect_bd_net -net ad9361_DCLK_3_P_1 [get_bd_ports ad9361_DCLK_3_P] [get_bd_pins AD9361_CTRL/ad9361_DCLK_3_P]
  connect_bd_net -net ad9361_RX_FRAME1_N_1 [get_bd_ports ad9361_RX_FRAME1_N] [get_bd_pins AD9361_CTRL/ad9361_RX_FRAME1_N]
  connect_bd_net -net ad9361_RX_FRAME1_P_1 [get_bd_ports ad9361_RX_FRAME1_P] [get_bd_pins AD9361_CTRL/ad9361_RX_FRAME1_P]
  connect_bd_net -net ad9361_RX_FRAME2_N_1 [get_bd_ports ad9361_RX_FRAME2_N] [get_bd_pins AD9361_CTRL/ad9361_RX_FRAME2_N]
  connect_bd_net -net ad9361_RX_FRAME2_P_1 [get_bd_ports ad9361_RX_FRAME2_P] [get_bd_pins AD9361_CTRL/ad9361_RX_FRAME2_P]
  connect_bd_net -net ad9361_RX_FRAME3_N_1 [get_bd_ports ad9361_RX_FRAME3_N] [get_bd_pins AD9361_CTRL/ad9361_RX_FRAME3_N]
  connect_bd_net -net ad9361_RX_FRAME3_P_1 [get_bd_ports ad9361_RX_FRAME3_P] [get_bd_pins AD9361_CTRL/ad9361_RX_FRAME3_P]
  connect_bd_net -net ad9361_SPI_DO_1_1 [get_bd_ports ad9361_SPI_DO_1] [get_bd_pins SPI_MOD/ad9361_SPI_DO_1]
  connect_bd_net -net ad9361_SPI_DO_2_1 [get_bd_ports ad9361_SPI_DO_2] [get_bd_pins SPI_MOD/ad9361_SPI_DO_2]
  connect_bd_net -net ad9361_SPI_DO_3_1 [get_bd_ports ad9361_SPI_DO_3] [get_bd_pins SPI_MOD/ad9361_SPI_DO_3]
  connect_bd_net -net ad9361_spi_clk_4 [get_bd_ports ad9361_SPI_CLK_1] [get_bd_ports ad9361_SPI_CLK_2] [get_bd_ports ad9361_SPI_CLK_3] [get_bd_ports ad9364_SPI_CLK] [get_bd_pins SPI_MOD/ad9361_SPI_CLK_1]
  connect_bd_net -net ad9361_spi_mosi_1 [get_bd_ports ad9361_SPI_DI_1] [get_bd_ports ad9361_SPI_DI_2] [get_bd_ports ad9361_SPI_DI_3] [get_bd_ports ad9364_SPI_DI] [get_bd_pins SPI_MOD/ad9361_SPI_DI_1]
  connect_bd_net -net ad9364_DCLK_N_1 [get_bd_ports ad9364_DCLK_N] [get_bd_pins AD9364/ad9364_DCLK_N]
  connect_bd_net -net ad9364_DCLK_P_1 [get_bd_ports ad9364_DCLK_P] [get_bd_pins AD9364/ad9364_DCLK_P]
  connect_bd_net -net ad9364_P1_N_1 [get_bd_ports ad9364_P1_N] [get_bd_pins AD9364/ad9364_P1_N]
  connect_bd_net -net ad9364_P1_P_1 [get_bd_ports ad9364_P1_P] [get_bd_pins AD9364/ad9364_P1_P]
  connect_bd_net -net ad9364_SPI_DO_1 [get_bd_ports ad9364_SPI_DO] [get_bd_pins SPI_MOD/ad9364_SPI_DO]
  connect_bd_net -net ad9364_TX_FRAME_N_1 [get_bd_ports ad9364_RX_FRAME_N] [get_bd_pins AD9364/ad9364_TX_FRAME_N]
  connect_bd_net -net ad9364_TX_FRAME_P_1 [get_bd_ports ad9364_RX_FRAME_P] [get_bd_pins AD9364/ad9364_TX_FRAME_P]
  connect_bd_net -net clk_axi_reset_n [get_bd_pins AD9361_CTRL/ext_reset_in] [get_bd_pins AD9364/ext_reset_in] [get_bd_pins CLK_AXI/reset_n]
  connect_bd_net -net clk_wiz_0_axi_periph_clk [get_bd_pins AD9361_CTRL/s_axi_aclk] [get_bd_pins AD9364/s_axi_aclk] [get_bd_pins AXI_Peripheral/m_aclk] [get_bd_pins CLK_AXI/axi_periph_clk] [get_bd_pins Control_from_SOM_0/s00_axi_aclk] [get_bd_pins Current_turning_off_0/s00_axi_aclk] [get_bd_pins IP_sync_0/s00_axi_aclk] [get_bd_pins SPI_MOD/s_axi4_aclk] [get_bd_pins clk_wiz_0/s_axi_aclk]
  connect_bd_net -net ibuf_0_out_ref [get_bd_pins AD9361_CTRL/FPGA_REF_40MHZ] [get_bd_pins CLK_AXI/out_ref]
  connect_bd_net -net mqc_t_0_odata_buff_0 [get_bd_pins AXI_Peripheral/fifo_wr_data_0] [get_bd_pins mqc_t_0/odata_buff_0]
  connect_bd_net -net mqc_t_0_odata_buff_1 [get_bd_pins AXI_Peripheral/fifo_wr_data_1] [get_bd_pins mqc_t_0/odata_buff_1]
  connect_bd_net -net mqc_t_0_oready_buff [get_bd_pins IP_sync_0/ready_buff] [get_bd_pins mqc_t_0/oready_buff]
  connect_bd_net -net reset_1 [get_bd_pins AD9361_CTRL/peripheral_reset] [get_bd_pins AXI_Peripheral/reset]
  connect_bd_net -net rst_sys_ps7_100M_peripheral_aresetn [get_bd_pins AD9361_CTRL/s_axi_aresetn] [get_bd_pins AD9364/s_axi_aresetn] [get_bd_pins AXI_Peripheral/S00_ARESETN] [get_bd_pins CLK_AXI/peripheral_aresetn] [get_bd_pins Control_from_SOM_0/s00_axi_aresetn] [get_bd_pins Current_turning_off_0/s00_axi_aresetn] [get_bd_pins IP_sync_0/s00_axi_aresetn] [get_bd_pins SPI_MOD/s_axi4_aresetn] [get_bd_pins clk_wiz_0/s_axi_aresetn]
  connect_bd_net -net som_en_28v_l1_1 [get_bd_ports som_28v_en_link1] [get_bd_pins Current_turning_off_0/som_en_28v_l1]
  connect_bd_net -net som_en_28v_l2_1 [get_bd_ports som_28v_en_link2] [get_bd_pins Current_turning_off_0/som_en_28v_l2]
  connect_bd_net -net som_en_28v_s1_1 [get_bd_ports som_28v_en_service1] [get_bd_pins Current_turning_off_0/som_en_28v_s1]
  connect_bd_net -net som_en_28v_s2_1 [get_bd_ports som_28v_en_service2] [get_bd_pins Current_turning_off_0/som_en_28v_s2]
  connect_bd_net -net som_en_28v_s3_1 [get_bd_ports som_28v_en_service3] [get_bd_pins Current_turning_off_0/som_en_28v_s3]
  connect_bd_net -net som_en_28v_s4_1 [get_bd_ports som_28v_en_service4] [get_bd_pins Current_turning_off_0/som_en_28v_s4]
  connect_bd_net -net som_en_5v_s_1 [get_bd_ports som_5v_en_link] [get_bd_pins Current_turning_off_0/som_en_5v_s]
  connect_bd_net -net spi_miso_0_1 [get_bd_ports spi_miso_0] [get_bd_pins Current_turning_off_0/spi_miso_0]
  connect_bd_net -net spi_miso_1_1 [get_bd_ports spi_miso_1] [get_bd_pins Current_turning_off_0/spi_miso_1]
  connect_bd_net -net sys_200m_clk [get_bd_pins AD9361_CTRL/delay_clk] [get_bd_pins AD9364/delay_clk] [get_bd_pins AXI_Peripheral/idelay_ref_clk] [get_bd_pins CLK_AXI/delay_clk]
  connect_bd_net -net up_txnrx_1 [get_bd_pins AD9361_CTRL/dout] [get_bd_pins AD9364/up_enable] [get_bd_pins AD9364/up_txnrx]
  connect_bd_net -net xlconcat_1_dout [get_bd_pins mqc_t_0/Service_1_RX_0] [get_bd_pins mqc_t_0/Service_1_TX_4] [get_bd_pins mqc_t_0/Service_2_RX_1] [get_bd_pins mqc_t_0/Service_2_TX_5] [get_bd_pins mqc_t_0/Service_3_RX_2] [get_bd_pins mqc_t_0/Service_3_TX_6] [get_bd_pins mqc_t_0/Service_4_RX_3] [get_bd_pins mqc_t_0/Service_4_TX_7] [get_bd_pins xlconcat_1/dout]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins mqc_t_0/AD9364_Samples] [get_bd_pins mqc_t_0/DL_RX_LNK_8] [get_bd_pins mqc_t_0/DL_TX_LNK_9] [get_bd_pins mqc_t_0/Power_meter_1] [get_bd_pins mqc_t_0/Power_meter_2] [get_bd_pins mqc_t_0/Power_meter_3] [get_bd_pins mqc_t_0/Power_meter_4] [get_bd_pins mqc_t_0/UL_RX_LNK_10] [get_bd_pins mqc_t_0/UL_TX_LNK_11] [get_bd_pins xlconstant_0/dout]

  # Create address segments
  create_bd_addr_seg -range 0x00010000 -offset 0x83CB0000 [get_bd_addr_spaces AXI_Peripheral/AXI_C2C/MAXI-Lite] [get_bd_addr_segs AXI_Peripheral/AXI_DMA/s_axi/axi_lite] SEG_AXI_DMA_axi_lite
  create_bd_addr_seg -range 0x00010000 -offset 0x83C10000 [get_bd_addr_spaces AXI_Peripheral/AXI_C2C/MAXI-Lite] [get_bd_addr_segs Control_from_SOM_0/S00_AXI/S00_AXI_reg] SEG_Control_from_SOM_0_S00_AXI_reg
  create_bd_addr_seg -range 0x00010000 -offset 0x83CE0000 [get_bd_addr_spaces AXI_Peripheral/AXI_C2C/MAXI-Lite] [get_bd_addr_segs Current_turning_off_0/S00_AXI/S00_AXI_reg] SEG_Current_turning_off_0_S00_AXI_reg
  create_bd_addr_seg -range 0x00010000 -offset 0x83C20000 [get_bd_addr_spaces AXI_Peripheral/AXI_C2C/MAXI-Lite] [get_bd_addr_segs IP_sync_0/S00_AXI/S00_AXI_reg] SEG_IP_sync_0_S00_AXI_reg
  create_bd_addr_seg -range 0x00010000 -offset 0x83C70000 [get_bd_addr_spaces AXI_Peripheral/AXI_C2C/MAXI-Lite] [get_bd_addr_segs AD9361_CTRL/AD9361_1/axi_ad9361_1/s_axi/axi_lite] SEG_axi_ad9361_1_axi_lite
  create_bd_addr_seg -range 0x00010000 -offset 0x83C80000 [get_bd_addr_spaces AXI_Peripheral/AXI_C2C/MAXI-Lite] [get_bd_addr_segs AD9361_CTRL/AD9361_2/axi_ad9361_2/s_axi/axi_lite] SEG_axi_ad9361_2_axi_lite
  create_bd_addr_seg -range 0x00010000 -offset 0x83C90000 [get_bd_addr_spaces AXI_Peripheral/AXI_C2C/MAXI-Lite] [get_bd_addr_segs AD9361_CTRL/AD9361_3/axi_ad9361_3/s_axi/axi_lite] SEG_axi_ad9361_3_axi_lite
  create_bd_addr_seg -range 0x00010000 -offset 0x83CA0000 [get_bd_addr_spaces AXI_Peripheral/AXI_C2C/MAXI-Lite] [get_bd_addr_segs AD9364/axi_ad9364/s_axi/axi_lite] SEG_axi_ad9364_axi_lite
  create_bd_addr_seg -range 0x00010000 -offset 0x83C00000 [get_bd_addr_spaces AXI_Peripheral/AXI_C2C/MAXI-Lite] [get_bd_addr_segs SPI_MOD/axi_spi/AXI_LITE/Reg] SEG_axi_spi_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x83C30000 [get_bd_addr_spaces AXI_Peripheral/AXI_C2C/MAXI-Lite] [get_bd_addr_segs clk_wiz_0/s_axi_lite/Reg] SEG_clk_wiz_0_Reg
  create_bd_addr_seg -range 0x40000000 -offset 0x00000000 [get_bd_addr_spaces AXI_Peripheral/AXI_DMA/m_dest_axi] [get_bd_addr_segs AXI_Peripheral/AXI_C2C/s_axi/Mem0] SEG_AXI_C2C_Mem0


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


