###################################################################

# Created by write_sdc on Wed Oct 25 14:52:52 2017

###################################################################
set sdc_version 1.8

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_operating_conditions typical -library typical
set_wire_load_model -name tsmc18_wl50 -library typical
create_clock [get_ports clk]  -period 10  -waveform {0 5}
