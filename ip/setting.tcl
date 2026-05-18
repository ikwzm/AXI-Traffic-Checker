#
# setting.tcl  Tcl script for set environments
#
set ip_name                 "AXI_TRAFFIC_CHECKER"
set ip_version              "0.7"
set ip_core_revision        1
set ip_description          "AXI Traffic Checker"
set ip_vendor_name          "ikwzm"
set ip_library_name         "PIPEWORK"
set ip_root_name            [string tolower $ip_name]_${ip_version}
set ip_root_directory       [file join [file dirname [info script]] $ip_root_name]

set project_name            [string tolower $ip_name]
set project_directory       [file join [file dirname [info script]] "work"]

