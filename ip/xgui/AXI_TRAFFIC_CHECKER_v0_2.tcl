# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Main [ipgui::add_page $IPINST -name "Main"]
  ipgui::add_param $IPINST -name "BUILD_VERSION" -parent ${Main}

  #Adding Page
  set CSR_IF [ipgui::add_page $IPINST -name "CSR IF" -display_name {CSR I/F}]
  set_property tooltip {CSR I/F} ${CSR_IF}
  ipgui::add_param $IPINST -name "C_ADDR_WIDTH" -parent ${CSR_IF}
  ipgui::add_param $IPINST -name "C_DATA_WIDTH" -parent ${CSR_IF}
  ipgui::add_param $IPINST -name "C_ID_WIDTH" -parent ${CSR_IF}

  #Adding Page
  set Master_I/F [ipgui::add_page $IPINST -name "Master I/F"]
  ipgui::add_param $IPINST -name "M_ADDR_WIDTH" -parent ${Master_I/F}
  ipgui::add_param $IPINST -name "M_DATA_WIDTH" -parent ${Master_I/F}
  ipgui::add_param $IPINST -name "M_ID_WIDTH" -parent ${Master_I/F}
  ipgui::add_param $IPINST -name "M_AUSER_WIDTH" -parent ${Master_I/F}
  ipgui::add_param $IPINST -name "M_AXI_ID" -parent ${Master_I/F}
  #Adding Group
  set Master_Read [ipgui::add_group $IPINST -name "Master Read" -parent ${Master_I/F} -display_name {Master Read Configuration}]
  ipgui::add_param $IPINST -name "MR_MAX_XFER_SIZE" -parent ${Master_Read}
  ipgui::add_param $IPINST -name "MR_QUEUE_SIZE" -parent ${Master_Read}
  ipgui::add_param $IPINST -name "MR_ACK_REGS" -parent ${Master_Read}
  ipgui::add_param $IPINST -name "MR_DATA_REGS" -parent ${Master_Read}
  ipgui::add_param $IPINST -name "MR_DATA_PIPELINE" -parent ${Master_Read}

  #Adding Group
  set Master_Write_Configuration [ipgui::add_group $IPINST -name "Master Write Configuration" -parent ${Master_I/F}]
  ipgui::add_param $IPINST -name "MW_MAX_XFER_SIZE" -parent ${Master_Write_Configuration}
  ipgui::add_param $IPINST -name "MW_QUEUE_SIZE" -parent ${Master_Write_Configuration}
  ipgui::add_param $IPINST -name "MW_REQ_REGS" -parent ${Master_Write_Configuration}
  ipgui::add_param $IPINST -name "MW_ACK_REGS" -parent ${Master_Write_Configuration}
  ipgui::add_param $IPINST -name "MW_RESP_REGS" -parent ${Master_Write_Configuration}
  ipgui::add_param $IPINST -name "MW_DATA_PIPELINE" -parent ${Master_Write_Configuration}

}

proc update_PARAM_VALUE.BUILD_VERSION { PARAM_VALUE.BUILD_VERSION } {
	# Procedure called to update BUILD_VERSION when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BUILD_VERSION { PARAM_VALUE.BUILD_VERSION } {
	# Procedure called to validate BUILD_VERSION
	return true
}

proc update_PARAM_VALUE.C_ADDR_WIDTH { PARAM_VALUE.C_ADDR_WIDTH } {
	# Procedure called to update C_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_ADDR_WIDTH { PARAM_VALUE.C_ADDR_WIDTH } {
	# Procedure called to validate C_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_DATA_WIDTH { PARAM_VALUE.C_DATA_WIDTH } {
	# Procedure called to update C_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_DATA_WIDTH { PARAM_VALUE.C_DATA_WIDTH } {
	# Procedure called to validate C_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_ID_WIDTH { PARAM_VALUE.C_ID_WIDTH } {
	# Procedure called to update C_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_ID_WIDTH { PARAM_VALUE.C_ID_WIDTH } {
	# Procedure called to validate C_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.MR_ACK_REGS { PARAM_VALUE.MR_ACK_REGS } {
	# Procedure called to update MR_ACK_REGS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MR_ACK_REGS { PARAM_VALUE.MR_ACK_REGS } {
	# Procedure called to validate MR_ACK_REGS
	return true
}

proc update_PARAM_VALUE.MR_DATA_PIPELINE { PARAM_VALUE.MR_DATA_PIPELINE } {
	# Procedure called to update MR_DATA_PIPELINE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MR_DATA_PIPELINE { PARAM_VALUE.MR_DATA_PIPELINE } {
	# Procedure called to validate MR_DATA_PIPELINE
	return true
}

proc update_PARAM_VALUE.MR_DATA_REGS { PARAM_VALUE.MR_DATA_REGS } {
	# Procedure called to update MR_DATA_REGS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MR_DATA_REGS { PARAM_VALUE.MR_DATA_REGS } {
	# Procedure called to validate MR_DATA_REGS
	return true
}

proc update_PARAM_VALUE.MR_MAX_XFER_SIZE { PARAM_VALUE.MR_MAX_XFER_SIZE } {
	# Procedure called to update MR_MAX_XFER_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MR_MAX_XFER_SIZE { PARAM_VALUE.MR_MAX_XFER_SIZE } {
	# Procedure called to validate MR_MAX_XFER_SIZE
	return true
}

proc update_PARAM_VALUE.MR_QUEUE_SIZE { PARAM_VALUE.MR_QUEUE_SIZE } {
	# Procedure called to update MR_QUEUE_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MR_QUEUE_SIZE { PARAM_VALUE.MR_QUEUE_SIZE } {
	# Procedure called to validate MR_QUEUE_SIZE
	return true
}

proc update_PARAM_VALUE.MW_ACK_REGS { PARAM_VALUE.MW_ACK_REGS } {
	# Procedure called to update MW_ACK_REGS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MW_ACK_REGS { PARAM_VALUE.MW_ACK_REGS } {
	# Procedure called to validate MW_ACK_REGS
	return true
}

proc update_PARAM_VALUE.MW_DATA_PIPELINE { PARAM_VALUE.MW_DATA_PIPELINE } {
	# Procedure called to update MW_DATA_PIPELINE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MW_DATA_PIPELINE { PARAM_VALUE.MW_DATA_PIPELINE } {
	# Procedure called to validate MW_DATA_PIPELINE
	return true
}

proc update_PARAM_VALUE.MW_MAX_XFER_SIZE { PARAM_VALUE.MW_MAX_XFER_SIZE } {
	# Procedure called to update MW_MAX_XFER_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MW_MAX_XFER_SIZE { PARAM_VALUE.MW_MAX_XFER_SIZE } {
	# Procedure called to validate MW_MAX_XFER_SIZE
	return true
}

proc update_PARAM_VALUE.MW_QUEUE_SIZE { PARAM_VALUE.MW_QUEUE_SIZE } {
	# Procedure called to update MW_QUEUE_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MW_QUEUE_SIZE { PARAM_VALUE.MW_QUEUE_SIZE } {
	# Procedure called to validate MW_QUEUE_SIZE
	return true
}

proc update_PARAM_VALUE.MW_REQ_REGS { PARAM_VALUE.MW_REQ_REGS } {
	# Procedure called to update MW_REQ_REGS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MW_REQ_REGS { PARAM_VALUE.MW_REQ_REGS } {
	# Procedure called to validate MW_REQ_REGS
	return true
}

proc update_PARAM_VALUE.MW_RESP_REGS { PARAM_VALUE.MW_RESP_REGS } {
	# Procedure called to update MW_RESP_REGS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MW_RESP_REGS { PARAM_VALUE.MW_RESP_REGS } {
	# Procedure called to validate MW_RESP_REGS
	return true
}

proc update_PARAM_VALUE.M_ADDR_WIDTH { PARAM_VALUE.M_ADDR_WIDTH } {
	# Procedure called to update M_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M_ADDR_WIDTH { PARAM_VALUE.M_ADDR_WIDTH } {
	# Procedure called to validate M_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.M_AUSER_WIDTH { PARAM_VALUE.M_AUSER_WIDTH } {
	# Procedure called to update M_AUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M_AUSER_WIDTH { PARAM_VALUE.M_AUSER_WIDTH } {
	# Procedure called to validate M_AUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.M_AXI_ID { PARAM_VALUE.M_AXI_ID } {
	# Procedure called to update M_AXI_ID when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M_AXI_ID { PARAM_VALUE.M_AXI_ID } {
	# Procedure called to validate M_AXI_ID
	return true
}

proc update_PARAM_VALUE.M_DATA_WIDTH { PARAM_VALUE.M_DATA_WIDTH } {
	# Procedure called to update M_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M_DATA_WIDTH { PARAM_VALUE.M_DATA_WIDTH } {
	# Procedure called to validate M_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.M_ID_WIDTH { PARAM_VALUE.M_ID_WIDTH } {
	# Procedure called to update M_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M_ID_WIDTH { PARAM_VALUE.M_ID_WIDTH } {
	# Procedure called to validate M_ID_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.BUILD_VERSION { MODELPARAM_VALUE.BUILD_VERSION PARAM_VALUE.BUILD_VERSION } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BUILD_VERSION}] ${MODELPARAM_VALUE.BUILD_VERSION}
}

proc update_MODELPARAM_VALUE.C_ADDR_WIDTH { MODELPARAM_VALUE.C_ADDR_WIDTH PARAM_VALUE.C_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_DATA_WIDTH { MODELPARAM_VALUE.C_DATA_WIDTH PARAM_VALUE.C_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_DATA_WIDTH}] ${MODELPARAM_VALUE.C_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_ID_WIDTH { MODELPARAM_VALUE.C_ID_WIDTH PARAM_VALUE.C_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_ID_WIDTH}] ${MODELPARAM_VALUE.C_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.M_AXI_ID { MODELPARAM_VALUE.M_AXI_ID PARAM_VALUE.M_AXI_ID } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M_AXI_ID}] ${MODELPARAM_VALUE.M_AXI_ID}
}

proc update_MODELPARAM_VALUE.M_ADDR_WIDTH { MODELPARAM_VALUE.M_ADDR_WIDTH PARAM_VALUE.M_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M_ADDR_WIDTH}] ${MODELPARAM_VALUE.M_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.M_DATA_WIDTH { MODELPARAM_VALUE.M_DATA_WIDTH PARAM_VALUE.M_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M_DATA_WIDTH}] ${MODELPARAM_VALUE.M_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.M_ID_WIDTH { MODELPARAM_VALUE.M_ID_WIDTH PARAM_VALUE.M_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M_ID_WIDTH}] ${MODELPARAM_VALUE.M_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.M_AUSER_WIDTH { MODELPARAM_VALUE.M_AUSER_WIDTH PARAM_VALUE.M_AUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M_AUSER_WIDTH}] ${MODELPARAM_VALUE.M_AUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.MW_MAX_XFER_SIZE { MODELPARAM_VALUE.MW_MAX_XFER_SIZE PARAM_VALUE.MW_MAX_XFER_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MW_MAX_XFER_SIZE}] ${MODELPARAM_VALUE.MW_MAX_XFER_SIZE}
}

proc update_MODELPARAM_VALUE.MW_QUEUE_SIZE { MODELPARAM_VALUE.MW_QUEUE_SIZE PARAM_VALUE.MW_QUEUE_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MW_QUEUE_SIZE}] ${MODELPARAM_VALUE.MW_QUEUE_SIZE}
}

proc update_MODELPARAM_VALUE.MW_REQ_REGS { MODELPARAM_VALUE.MW_REQ_REGS PARAM_VALUE.MW_REQ_REGS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MW_REQ_REGS}] ${MODELPARAM_VALUE.MW_REQ_REGS}
}

proc update_MODELPARAM_VALUE.MW_ACK_REGS { MODELPARAM_VALUE.MW_ACK_REGS PARAM_VALUE.MW_ACK_REGS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MW_ACK_REGS}] ${MODELPARAM_VALUE.MW_ACK_REGS}
}

proc update_MODELPARAM_VALUE.MW_RESP_REGS { MODELPARAM_VALUE.MW_RESP_REGS PARAM_VALUE.MW_RESP_REGS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MW_RESP_REGS}] ${MODELPARAM_VALUE.MW_RESP_REGS}
}

proc update_MODELPARAM_VALUE.MW_DATA_PIPELINE { MODELPARAM_VALUE.MW_DATA_PIPELINE PARAM_VALUE.MW_DATA_PIPELINE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MW_DATA_PIPELINE}] ${MODELPARAM_VALUE.MW_DATA_PIPELINE}
}

proc update_MODELPARAM_VALUE.MR_MAX_XFER_SIZE { MODELPARAM_VALUE.MR_MAX_XFER_SIZE PARAM_VALUE.MR_MAX_XFER_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MR_MAX_XFER_SIZE}] ${MODELPARAM_VALUE.MR_MAX_XFER_SIZE}
}

proc update_MODELPARAM_VALUE.MR_QUEUE_SIZE { MODELPARAM_VALUE.MR_QUEUE_SIZE PARAM_VALUE.MR_QUEUE_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MR_QUEUE_SIZE}] ${MODELPARAM_VALUE.MR_QUEUE_SIZE}
}

proc update_MODELPARAM_VALUE.MR_ACK_REGS { MODELPARAM_VALUE.MR_ACK_REGS PARAM_VALUE.MR_ACK_REGS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MR_ACK_REGS}] ${MODELPARAM_VALUE.MR_ACK_REGS}
}

proc update_MODELPARAM_VALUE.MR_DATA_REGS { MODELPARAM_VALUE.MR_DATA_REGS PARAM_VALUE.MR_DATA_REGS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MR_DATA_REGS}] ${MODELPARAM_VALUE.MR_DATA_REGS}
}

proc update_MODELPARAM_VALUE.MR_DATA_PIPELINE { MODELPARAM_VALUE.MR_DATA_PIPELINE PARAM_VALUE.MR_DATA_PIPELINE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MR_DATA_PIPELINE}] ${MODELPARAM_VALUE.MR_DATA_PIPELINE}
}

