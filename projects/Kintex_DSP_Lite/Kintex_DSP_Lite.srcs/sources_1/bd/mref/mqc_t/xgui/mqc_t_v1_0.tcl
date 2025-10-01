# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "pDAT_FFT_Num" -parent ${Page_0}
  ipgui::add_param $IPINST -name "pDAT_Num" -parent ${Page_0}
  ipgui::add_param $IPINST -name "pDAT_W" -parent ${Page_0}


}

proc update_PARAM_VALUE.pDAT_FFT_Num { PARAM_VALUE.pDAT_FFT_Num } {
	# Procedure called to update pDAT_FFT_Num when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.pDAT_FFT_Num { PARAM_VALUE.pDAT_FFT_Num } {
	# Procedure called to validate pDAT_FFT_Num
	return true
}

proc update_PARAM_VALUE.pDAT_Num { PARAM_VALUE.pDAT_Num } {
	# Procedure called to update pDAT_Num when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.pDAT_Num { PARAM_VALUE.pDAT_Num } {
	# Procedure called to validate pDAT_Num
	return true
}

proc update_PARAM_VALUE.pDAT_W { PARAM_VALUE.pDAT_W } {
	# Procedure called to update pDAT_W when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.pDAT_W { PARAM_VALUE.pDAT_W } {
	# Procedure called to validate pDAT_W
	return true
}


proc update_MODELPARAM_VALUE.pDAT_W { MODELPARAM_VALUE.pDAT_W PARAM_VALUE.pDAT_W } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.pDAT_W}] ${MODELPARAM_VALUE.pDAT_W}
}

proc update_MODELPARAM_VALUE.pDAT_Num { MODELPARAM_VALUE.pDAT_Num PARAM_VALUE.pDAT_Num } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.pDAT_Num}] ${MODELPARAM_VALUE.pDAT_Num}
}

proc update_MODELPARAM_VALUE.pDAT_FFT_Num { MODELPARAM_VALUE.pDAT_FFT_Num PARAM_VALUE.pDAT_FFT_Num } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.pDAT_FFT_Num}] ${MODELPARAM_VALUE.pDAT_FFT_Num}
}

