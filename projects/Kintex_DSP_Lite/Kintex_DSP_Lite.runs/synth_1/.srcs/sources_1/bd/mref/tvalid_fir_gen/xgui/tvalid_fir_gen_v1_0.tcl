# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "CLK_RATE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DATA_W" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SAMPLE_RATE" -parent ${Page_0}


}

proc update_PARAM_VALUE.CLK_RATE { PARAM_VALUE.CLK_RATE } {
	# Procedure called to update CLK_RATE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CLK_RATE { PARAM_VALUE.CLK_RATE } {
	# Procedure called to validate CLK_RATE
	return true
}

proc update_PARAM_VALUE.DATA_W { PARAM_VALUE.DATA_W } {
	# Procedure called to update DATA_W when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DATA_W { PARAM_VALUE.DATA_W } {
	# Procedure called to validate DATA_W
	return true
}

proc update_PARAM_VALUE.SAMPLE_RATE { PARAM_VALUE.SAMPLE_RATE } {
	# Procedure called to update SAMPLE_RATE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SAMPLE_RATE { PARAM_VALUE.SAMPLE_RATE } {
	# Procedure called to validate SAMPLE_RATE
	return true
}


proc update_MODELPARAM_VALUE.CLK_RATE { MODELPARAM_VALUE.CLK_RATE PARAM_VALUE.CLK_RATE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CLK_RATE}] ${MODELPARAM_VALUE.CLK_RATE}
}

proc update_MODELPARAM_VALUE.SAMPLE_RATE { MODELPARAM_VALUE.SAMPLE_RATE PARAM_VALUE.SAMPLE_RATE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SAMPLE_RATE}] ${MODELPARAM_VALUE.SAMPLE_RATE}
}

proc update_MODELPARAM_VALUE.DATA_W { MODELPARAM_VALUE.DATA_W PARAM_VALUE.DATA_W } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DATA_W}] ${MODELPARAM_VALUE.DATA_W}
}

