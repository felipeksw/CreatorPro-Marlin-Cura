; **** FlashForge Creator Pro end.gcode ****
M73 P100 ; end build progress
G1 Z150 F1000 ; send Z axis to bottom of machine
M140 S0 T0 ; cool down HBP
M104 S0 T0 ; cool down right extruder
M104 S0 T1 ; cool down left extruder
M127 ; stop blower fan
G162 X Y F3000 ; home XY maximum
M18 ; disable stepper
M70 P3 ; We <3 Making Things!
M72 P1 ; play Ta-Da song
; **** end of end.gcode ****