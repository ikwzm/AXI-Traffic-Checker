#
# create_ip.tcl  Tcl script for generate IP
#
source [file join [file dirname [info script]] "setting.tcl"]
#
# Open project
#
open_project [file join $project_directory $project_name]
#
# Create IP-Package project
#
ipx::package_project -root_dir $ip_root_directory -vendor $ip_vendor_name -library $ip_library_name -taxonomy /UserIP -generated_files -import_files -force
#
# Set IP Properties
#
set_property version       $ip_version          [ipx::current_core]
set_property core_revision $ip_core_revision    [ipx::current_core]
set_property name          $ip_name             [ipx::current_core]
set_property display_name  $ip_name             [ipx::current_core]
set_property description   $ip_description      [ipx::current_core]
#
# Set Supported Families
#
set_property supported_families {zynq Production virtex7 Production qvirtex7 Production kintex7 Production kintex7l Production qkintex7 Production qkintex7l Production artix7 Production artix7l Production aartix7 Production qartix7 Production zynq Production qzynq Production azynq Production zynquplus Production} [ipx::current_core]
#
# Infer Bus Interfaces
#
ipx::infer_bus_interfaces xilinx.com:interface:aximm_rtl:1.0 [ipx::current_core]
ipx::infer_bus_interfaces xilinx.com:interface:axis_rtl:1.0  [ipx::current_core]
#
# Associate Clock
#
ipx::associate_bus_interfaces -clock ACLK -reset IRQ [ipx::current_core]
ipx::associate_bus_interfaces -busif C -clock ACLK   [ipx::current_core]
ipx::associate_bus_interfaces -busif M -clock ACLK   [ipx::current_core]
#
# Set Address Range
#
set_property range 0x1000 [ipx::get_address_blocks reg0 -of_objects [ipx::get_memory_maps C -of_objects [ipx::current_core]]]
#
# Generate files
#
ipx::create_xgui_files       [ipx::current_core]
ipx::update_checksums        [ipx::current_core]
ipx::save_core               [ipx::current_core]
#
# Close and Done.
#
close_project
