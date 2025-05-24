# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "ACC" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DELAY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DONE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IDLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "INPUT_CONV" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MUL" -parent ${Page_0}
  ipgui::add_param $IPINST -name "OUTPUT" -parent ${Page_0}


}

proc update_PARAM_VALUE.ACC { PARAM_VALUE.ACC } {
	# Procedure called to update ACC when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ACC { PARAM_VALUE.ACC } {
	# Procedure called to validate ACC
	return true
}

proc update_PARAM_VALUE.DELAY { PARAM_VALUE.DELAY } {
	# Procedure called to update DELAY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DELAY { PARAM_VALUE.DELAY } {
	# Procedure called to validate DELAY
	return true
}

proc update_PARAM_VALUE.DONE { PARAM_VALUE.DONE } {
	# Procedure called to update DONE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DONE { PARAM_VALUE.DONE } {
	# Procedure called to validate DONE
	return true
}

proc update_PARAM_VALUE.IDLE { PARAM_VALUE.IDLE } {
	# Procedure called to update IDLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IDLE { PARAM_VALUE.IDLE } {
	# Procedure called to validate IDLE
	return true
}

proc update_PARAM_VALUE.INPUT_CONV { PARAM_VALUE.INPUT_CONV } {
	# Procedure called to update INPUT_CONV when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.INPUT_CONV { PARAM_VALUE.INPUT_CONV } {
	# Procedure called to validate INPUT_CONV
	return true
}

proc update_PARAM_VALUE.MUL { PARAM_VALUE.MUL } {
	# Procedure called to update MUL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MUL { PARAM_VALUE.MUL } {
	# Procedure called to validate MUL
	return true
}

proc update_PARAM_VALUE.OUTPUT { PARAM_VALUE.OUTPUT } {
	# Procedure called to update OUTPUT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.OUTPUT { PARAM_VALUE.OUTPUT } {
	# Procedure called to validate OUTPUT
	return true
}


proc update_MODELPARAM_VALUE.IDLE { MODELPARAM_VALUE.IDLE PARAM_VALUE.IDLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IDLE}] ${MODELPARAM_VALUE.IDLE}
}

proc update_MODELPARAM_VALUE.INPUT_CONV { MODELPARAM_VALUE.INPUT_CONV PARAM_VALUE.INPUT_CONV } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.INPUT_CONV}] ${MODELPARAM_VALUE.INPUT_CONV}
}

proc update_MODELPARAM_VALUE.DELAY { MODELPARAM_VALUE.DELAY PARAM_VALUE.DELAY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DELAY}] ${MODELPARAM_VALUE.DELAY}
}

proc update_MODELPARAM_VALUE.MUL { MODELPARAM_VALUE.MUL PARAM_VALUE.MUL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MUL}] ${MODELPARAM_VALUE.MUL}
}

proc update_MODELPARAM_VALUE.ACC { MODELPARAM_VALUE.ACC PARAM_VALUE.ACC } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ACC}] ${MODELPARAM_VALUE.ACC}
}

proc update_MODELPARAM_VALUE.OUTPUT { MODELPARAM_VALUE.OUTPUT PARAM_VALUE.OUTPUT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.OUTPUT}] ${MODELPARAM_VALUE.OUTPUT}
}

proc update_MODELPARAM_VALUE.DONE { MODELPARAM_VALUE.DONE PARAM_VALUE.DONE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DONE}] ${MODELPARAM_VALUE.DONE}
}

