; **** FlashForge Creator Pro PRINTER start.gcode for dual extrusion only ****
M83 ; relative extrusion mode
M73 P0 ; enable build progress
G162 X Y F3000 ; home XY maximum
G161 Z F1200 ; home Z minimum
G92 Z-5 ; set Z to -5
G1 Z0 ; move Z to 0
G161 Z F100 ; home Z slowly
M132 X Y Z A B ; recall home offsets
M135 T0 ; load right extruder offsets
G1 X150 Y-70 Z30 F9000 ; move to wait position right hand side of the table
G130 X20 Y20 Z20 A20 B20 ; lower stepper Vrefs while heating
M127
M140 S{material_bed_temperature, initial_extruder_nr} T0 ; set bed temperature
M134 T0 ; stabilize bed temperature
M104 S{material_print_temperature_layer_0, 0} T0 ; set right extruder temp
M104 S{material_print_temperature_layer_0, 1} T1 ; set left extruder temp
M133 T0 ; stabilize right extruder temperature
M133 T1 ; stabilize left extruder temperature
G130 X127 Y127 Z40 A127 B127 ; default stepper Vrefs
G92 A0 B0 ; zero extruders
M135 T0 ; right tool
G1 Z0.4 ; position nozzle
G1 X110 Y-70 E25 F300 ; purge nozzle
G1 X120 Y-70 Z0.15 F1200 ; slow wipe
G1 X110 Y-70 Z0.5 F1200 ; lift
G1 Z4 F1200 ; raise
G1 X-110 F4000 ; move nozzle to left side of bed
G1 Z0.4 F1200 ; lower
M135 T1 ; left tool
G1 X-140 Y-70 F9000 ; reposition nozzle
G1 X-100 Y-70 E25 F300 ; purge nozzle
G1 X-110 Y-70 Z0.15 F1200 ; slow wipe
G1 X-100 Y-70 Z0.5 F1200 ; lift
G92 A0 B0 ; zero extruders
M135 T{initial_extruder_nr} ; left or right tool
M73 P1 ;@body (notify GPX body has started)
; **** end of start.gcode ****