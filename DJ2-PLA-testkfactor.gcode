; ### Marlin K-Factor Calibration Pattern ###
; -------------------------------------------
;
; Printer: MK3S
; Filament: Sunlu red
; Created: Thu Nov 26 2020 19:07:39 GMT-0500 (heure normale de l’Est nord-américain)
;
; Settings Printer:
; Filament Diameter = 1.74 mm
; Nozzle Diameter = 0.4 mm
; Nozzle Temperature = 225 °C
; Bed Temperature = 60 °C
; Retraction Distance = 0 mm
; Layer Height = 0.2 mm
; Extruder = NaN 
; Fan Speed = 0 %
; Z-axis Offset = 0 mm
;
; Settings Print Bed:
; Bed Shape = Rect
; Bed Size X = 250 mm
; Bed Size Y = 210 mm
; Origin Bed Center = false
;
; Settings Speed:
; Slow Printing Speed = 1200 mm/m
; Fast Printing Speed = 4800 mm/m
; Movement Speed = 7200 mm/m
; Retract Speed = 4800 mm/m
; Unretract Speed = 1800 mm/m
; Printing Acceleration = 1000 mm/s^2
; Jerk X-axis =  firmware default
; Jerk Y-axis =  firmware default
; Jerk Z-axis =  firmware default
; Jerk Extruder =  firmware default
;
; Settings Pattern:
; Linear Advance Version = 1.5
; Starting Value Factor = 0
; Ending Value Factor = 0.25
; Factor Stepping = 0.01
; Test Line Spacing = 5 mm
; Test Line Length Slow = 20 mm
; Test Line Length Fast = 40 mm
; Print Pattern = Standard
; Print Frame = false
; Number Lines = true
; Print Size X = 98 mm
; Print Size Y = 150 mm
; Print Rotation = 0 degree
;
; Settings Advance:
; Nozzle / Line Ratio = 1.2
; Bed leveling = 0
; Use FWRETRACT = false
; Extrusion Multiplier = 0.99
; Prime Nozzle = true
; Prime Extrusion Multiplier = 2.5
; Prime Speed = 1800
; Dwell Time = 2 s
;
; prepare printing
;
;
G21 ; Millimeter units
G90 ; Absolute XYZ
M83 ; Relative E
G28 W ; Home all axes without bed leveling

M140 S60 ; set first layer bed temp
M109 S160 ; Set extruder temp before bed level
M190 S60 ; wait for bed temp
G28 W ; home all without mesh bed level
G80 ; mesh bed leveling set 3x3, 5x5, or 7x7 in settings menu
G1 Y-3.0 Z0.6 F1000.0 ; go outside print area
M109 S225 ; wait for extruder temp


M204 P1000 ; Acceleration
G92 E0 ; Reset extruder distance
M106 PNaN S0
G1 X125 Y105 F10800 ; move to start
G1 Z0.2 F1800 ; Move to layer height
;
; prime nozzle
;
G1 X76 Y30 F10800 ; move to start
G1 X76 Y180 E15.1396 F1800 ; print line
G1 X76.72 Y180 F10800 ; move to start
G1 X76.72 Y30 E15.1396 F1800 ; print line
G1 E-3 F4800 ; retract

; start the Test pattern
;
G4 P2000 ; Pause (dwell) for 2 seconds
G1 X86 Y30 F7200 ; move to start
M900 K0 ; set K-factor
M117 K0 ; 
G1 E0 F1800 ; un-retract
G1 X106 Y30 E0.7994 F1200 ; print line
G1 X146 Y30 E1.5987 F4800 ; print line
G1 X166 Y30 E0.7994 F1200 ; print line
G1 E-0 F4800 ; retract
G1 X86 Y35 F7200 ; move to start
M900 K0.01 ; set K-factor
M117 K0.01 ; 
G1 E0 F1800 ; un-retract
G1 X106 Y35 E0.7994 F1200 ; print line
G1 X146 Y35 E1.5987 F4800 ; print line
G1 X166 Y35 E0.7994 F1200 ; print line
G1 E-0 F4800 ; retract
G1 X86 Y40 F7200 ; move to start
M900 K0.02 ; set K-factor
M117 K0.02 ; 
G1 E0 F1800 ; un-retract
G1 X106 Y40 E0.7994 F1200 ; print line
G1 X146 Y40 E1.5987 F4800 ; print line
G1 X166 Y40 E0.7994 F1200 ; print line
G1 E-0 F4800 ; retract
G1 X86 Y45 F7200 ; move to start
M900 K0.03 ; set K-factor
M117 K0.03 ; 
G1 E0 F1800 ; un-retract
G1 X106 Y45 E0.7994 F1200 ; print line
G1 X146 Y45 E1.5987 F4800 ; print line
G1 X166 Y45 E0.7994 F1200 ; print line
G1 E-0 F4800 ; retract
G1 X86 Y50 F7200 ; move to start
M900 K0.04 ; set K-factor
M117 K0.04 ; 
G1 E0 F1800 ; un-retract
G1 X106 Y50 E0.7994 F1200 ; print line
G1 X146 Y50 E1.5987 F4800 ; print line
G1 X166 Y50 E0.7994 F1200 ; print line
G1 E-0 F4800 ; retract
G1 X86 Y55 F7200 ; move to start
M900 K0.05 ; set K-factor
M117 K0.05 ; 
G1 E0 F1800 ; un-retract
G1 X106 Y55 E0.7994 F1200 ; print line
G1 X146 Y55 E1.5987 F4800 ; print line
G1 X166 Y55 E0.7994 F1200 ; print line
G1 E-0 F4800 ; retract
G1 X86 Y60 F7200 ; move to start
M900 K0.06 ; set K-factor
M117 K0.06 ; 
G1 E0 F1800 ; un-retract
G1 X106 Y60 E0.7994 F1200 ; print line
G1 X146 Y60 E1.5987 F4800 ; print line
G1 X166 Y60 E0.7994 F1200 ; print line
G1 E-0 F4800 ; retract
G1 X86 Y65 F7200 ; move to start
M900 K0.07 ; set K-factor
M117 K0.07 ; 
G1 E0 F1800 ; un-retract
G1 X106 Y65 E0.7994 F1200 ; print line
G1 X146 Y65 E1.5987 F4800 ; print line
G1 X166 Y65 E0.7994 F1200 ; print line
G1 E-0 F4800 ; retract
G1 X86 Y70 F7200 ; move to start
M900 K0.08 ; set K-factor
M117 K0.08 ; 
G1 E0 F1800 ; un-retract
G1 X106 Y70 E0.7994 F1200 ; print line
G1 X146 Y70 E1.5987 F4800 ; print line
G1 X166 Y70 E0.7994 F1200 ; print line
G1 E-0 F4800 ; retract
G1 X86 Y75 F7200 ; move to start
M900 K0.09 ; set K-factor
M117 K0.09 ; 
G1 E0 F1800 ; un-retract
G1 X106 Y75 E0.7994 F1200 ; print line
G1 X146 Y75 E1.5987 F4800 ; print line
G1 X166 Y75 E0.7994 F1200 ; print line
G1 E-0 F4800 ; retract
G1 X86 Y80 F7200 ; move to start
M900 K0.1 ; set K-factor
M117 K0.1 ; 
G1 E0 F1800 ; un-retract
G1 X106 Y80 E0.7994 F1200 ; print line
G1 X146 Y80 E1.5987 F4800 ; print line
G1 X166 Y80 E0.7994 F1200 ; print line
G1 E-0 F4800 ; retract
G1 X86 Y85 F7200 ; move to start
M900 K0.11 ; set K-factor
M117 K0.11 ; 
G1 E0 F1800 ; un-retract
G1 X106 Y85 E0.7994 F1200 ; print line
G1 X146 Y85 E1.5987 F4800 ; print line
G1 X166 Y85 E0.7994 F1200 ; print line
G1 E-0 F4800 ; retract
G1 X86 Y90 F7200 ; move to start
M900 K0.12 ; set K-factor
M117 K0.12 ; 
G1 E0 F1800 ; un-retract
G1 X106 Y90 E0.7994 F1200 ; print line
G1 X146 Y90 E1.5987 F4800 ; print line
G1 X166 Y90 E0.7994 F1200 ; print line
G1 E-0 F4800 ; retract
G1 X86 Y95 F7200 ; move to start
M900 K0.13 ; set K-factor
M117 K0.13 ; 
G1 E0 F1800 ; un-retract
G1 X106 Y95 E0.7994 F1200 ; print line
G1 X146 Y95 E1.5987 F4800 ; print line
G1 X166 Y95 E0.7994 F1200 ; print line
G1 E-0 F4800 ; retract
G1 X86 Y100 F7200 ; move to start
M900 K0.14 ; set K-factor
M117 K0.14 ; 
G1 E0 F1800 ; un-retract
G1 X106 Y100 E0.7994 F1200 ; print line
G1 X146 Y100 E1.5987 F4800 ; print line
G1 X166 Y100 E0.7994 F1200 ; print line
G1 E-0 F4800 ; retract
G1 X86 Y105 F7200 ; move to start
M900 K0.15 ; set K-factor
M117 K0.15 ; 
G1 E0 F1800 ; un-retract
G1 X106 Y105 E0.7994 F1200 ; print line
G1 X146 Y105 E1.5987 F4800 ; print line
G1 X166 Y105 E0.7994 F1200 ; print line
G1 E-0 F4800 ; retract
G1 X86 Y110 F7200 ; move to start
M900 K0.16 ; set K-factor
M117 K0.16 ; 
G1 E0 F1800 ; un-retract
G1 X106 Y110 E0.7994 F1200 ; print line
G1 X146 Y110 E1.5987 F4800 ; print line
G1 X166 Y110 E0.7994 F1200 ; print line
G1 E-0 F4800 ; retract
G1 X86 Y115 F7200 ; move to start
M900 K0.17 ; set K-factor
M117 K0.17 ; 
G1 E0 F1800 ; un-retract
G1 X106 Y115 E0.7994 F1200 ; print line
G1 X146 Y115 E1.5987 F4800 ; print line
G1 X166 Y115 E0.7994 F1200 ; print line
G1 E-0 F4800 ; retract
G1 X86 Y120 F7200 ; move to start
M900 K0.18 ; set K-factor
M117 K0.18 ; 
G1 E0 F1800 ; un-retract
G1 X106 Y120 E0.7994 F1200 ; print line
G1 X146 Y120 E1.5987 F4800 ; print line
G1 X166 Y120 E0.7994 F1200 ; print line
G1 E-0 F4800 ; retract
G1 X86 Y125 F7200 ; move to start
M900 K0.19 ; set K-factor
M117 K0.19 ; 
G1 E0 F1800 ; un-retract
G1 X106 Y125 E0.7994 F1200 ; print line
G1 X146 Y125 E1.5987 F4800 ; print line
G1 X166 Y125 E0.7994 F1200 ; print line
G1 E-0 F4800 ; retract
G1 X86 Y130 F7200 ; move to start
M900 K0.2 ; set K-factor
M117 K0.2 ; 
G1 E0 F1800 ; un-retract
G1 X106 Y130 E0.7994 F1200 ; print line
G1 X146 Y130 E1.5987 F4800 ; print line
G1 X166 Y130 E0.7994 F1200 ; print line
G1 E-0 F4800 ; retract
G1 X86 Y135 F7200 ; move to start
M900 K0.21 ; set K-factor
M117 K0.21 ; 
G1 E0 F1800 ; un-retract
G1 X106 Y135 E0.7994 F1200 ; print line
G1 X146 Y135 E1.5987 F4800 ; print line
G1 X166 Y135 E0.7994 F1200 ; print line
G1 E-0 F4800 ; retract
G1 X86 Y140 F7200 ; move to start
M900 K0.22 ; set K-factor
M117 K0.22 ; 
G1 E0 F1800 ; un-retract
G1 X106 Y140 E0.7994 F1200 ; print line
G1 X146 Y140 E1.5987 F4800 ; print line
G1 X166 Y140 E0.7994 F1200 ; print line
G1 E-0 F4800 ; retract
G1 X86 Y145 F7200 ; move to start
M900 K0.23 ; set K-factor
M117 K0.23 ; 
G1 E0 F1800 ; un-retract
G1 X106 Y145 E0.7994 F1200 ; print line
G1 X146 Y145 E1.5987 F4800 ; print line
G1 X166 Y145 E0.7994 F1200 ; print line
G1 E-0 F4800 ; retract
G1 X86 Y150 F7200 ; move to start
M900 K0.24 ; set K-factor
M117 K0.24 ; 
G1 E0 F1800 ; un-retract
G1 X106 Y150 E0.7994 F1200 ; print line
G1 X146 Y150 E1.5987 F4800 ; print line
G1 X166 Y150 E0.7994 F1200 ; print line
G1 E-0 F4800 ; retract
G1 X86 Y155 F7200 ; move to start
;
; Mark the test area for reference
M117 K0
M900 K0 ; Set K-factor 0
G1 X106 Y160 F7200 ; move to start
G1 E0 F1800 ; un-retract
G1 X106 Y180 E0.7994 F1200 ; print line
G1 E-0 F4800 ; retract
G1 X146 Y160 F7200 ; move to start
G1 E0 F1800 ; un-retract
G1 X146 Y180 E0.7994 F1200 ; print line
G1 E-0 F4800 ; retract
G1 Z0.3 F1200 ; zHop
;
; print K-values
;
G1 X168 Y28 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E0 F1800 ; un-retract
G1 X170 Y28 E0.0799 F1200 ; 0
G1 X170 Y30 E0.0799 F1200 ; 0
G1 X170 Y32 E0.0799 F1200 ; 0
G1 X168 Y32 E0.0799 F1200 ; 0
G1 X168 Y30 E0.0799 F1200 ; 0
G1 X168 Y28 E0.0799 F1200 ; 0
G1 E-0 F4800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X168 Y38 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E0 F1800 ; un-retract
G1 X170 Y38 E0.0799 F1200 ; 0
G1 X170 Y40 E0.0799 F1200 ; 0
G1 X170 Y42 E0.0799 F1200 ; 0
G1 X168 Y42 E0.0799 F1200 ; 0
G1 X168 Y40 E0.0799 F1200 ; 0
G1 X168 Y38 E0.0799 F1200 ; 0
G1 E-0 F4800 ; retract
G1 X171 Y38 F7200 ; move to start
G1 E0 F1800 ; un-retract
G1 X171 Y38.4 E0.016 F1200 ; dot
G1 E-0 F4800 ; retract
G1 X172 Y38 F7200 ; move to start
G1 E0 F1800 ; un-retract
G1 X174 Y38 E0.0799 F1200 ; 0
G1 X174 Y40 E0.0799 F1200 ; 0
G1 X174 Y42 E0.0799 F1200 ; 0
G1 X172 Y42 E0.0799 F1200 ; 0
G1 X172 Y40 E0.0799 F1200 ; 0
G1 X172 Y38 E0.0799 F1200 ; 0
G1 E-0 F4800 ; retract
G1 X175 Y38 F7200 ; move to start
G1 E0 F1800 ; un-retract
G1 X175 Y40 F7200 ; move to start
G1 X175 Y42 F7200 ; move to start
G1 X177 Y42 E0.0799 F1200 ; 2
G1 X177 Y40 E0.0799 F1200 ; 2
G1 X175 Y40 E0.0799 F1200 ; 2
G1 X175 Y38 E0.0799 F1200 ; 2
G1 X177 Y38 E0.0799 F1200 ; 2
G1 E-0 F4800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X168 Y48 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E0 F1800 ; un-retract
G1 X170 Y48 E0.0799 F1200 ; 0
G1 X170 Y50 E0.0799 F1200 ; 0
G1 X170 Y52 E0.0799 F1200 ; 0
G1 X168 Y52 E0.0799 F1200 ; 0
G1 X168 Y50 E0.0799 F1200 ; 0
G1 X168 Y48 E0.0799 F1200 ; 0
G1 E-0 F4800 ; retract
G1 X171 Y48 F7200 ; move to start
G1 E0 F1800 ; un-retract
G1 X171 Y48.4 E0.016 F1200 ; dot
G1 E-0 F4800 ; retract
G1 X172 Y48 F7200 ; move to start
G1 E0 F1800 ; un-retract
G1 X174 Y48 E0.0799 F1200 ; 0
G1 X174 Y50 E0.0799 F1200 ; 0
G1 X174 Y52 E0.0799 F1200 ; 0
G1 X172 Y52 E0.0799 F1200 ; 0
G1 X172 Y50 E0.0799 F1200 ; 0
G1 X172 Y48 E0.0799 F1200 ; 0
G1 E-0 F4800 ; retract
G1 X175 Y48 F7200 ; move to start
G1 E0 F1800 ; un-retract
G1 X175 Y50 F7200 ; move to start
G1 X175 Y52 F7200 ; move to start
G1 X175 Y50 E0.0799 F1200 ; 4
G1 X177 Y50 E0.0799 F1200 ; 4
G1 X177 Y52 F7200 ; move to start
G1 X177 Y50 E0.0799 F1200 ; 4
G1 X177 Y48 E0.0799 F1200 ; 4
G1 E-0 F4800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X168 Y58 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E0 F1800 ; un-retract
G1 X170 Y58 E0.0799 F1200 ; 0
G1 X170 Y60 E0.0799 F1200 ; 0
G1 X170 Y62 E0.0799 F1200 ; 0
G1 X168 Y62 E0.0799 F1200 ; 0
G1 X168 Y60 E0.0799 F1200 ; 0
G1 X168 Y58 E0.0799 F1200 ; 0
G1 E-0 F4800 ; retract
G1 X171 Y58 F7200 ; move to start
G1 E0 F1800 ; un-retract
G1 X171 Y58.4 E0.016 F1200 ; dot
G1 E-0 F4800 ; retract
G1 X172 Y58 F7200 ; move to start
G1 E0 F1800 ; un-retract
G1 X174 Y58 E0.0799 F1200 ; 0
G1 X174 Y60 E0.0799 F1200 ; 0
G1 X174 Y62 E0.0799 F1200 ; 0
G1 X172 Y62 E0.0799 F1200 ; 0
G1 X172 Y60 E0.0799 F1200 ; 0
G1 X172 Y58 E0.0799 F1200 ; 0
G1 E-0 F4800 ; retract
G1 X175 Y58 F7200 ; move to start
G1 E0 F1800 ; un-retract
G1 X175 Y60 F7200 ; move to start
G1 X177 Y60 E0.0799 F1200 ; 6
G1 X177 Y58 E0.0799 F1200 ; 6
G1 X175 Y58 E0.0799 F1200 ; 6
G1 X175 Y60 E0.0799 F1200 ; 6
G1 X175 Y62 E0.0799 F1200 ; 6
G1 X177 Y62 E0.0799 F1200 ; 6
G1 E-0 F4800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X168 Y68 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E0 F1800 ; un-retract
G1 X170 Y68 E0.0799 F1200 ; 0
G1 X170 Y70 E0.0799 F1200 ; 0
G1 X170 Y72 E0.0799 F1200 ; 0
G1 X168 Y72 E0.0799 F1200 ; 0
G1 X168 Y70 E0.0799 F1200 ; 0
G1 X168 Y68 E0.0799 F1200 ; 0
G1 E-0 F4800 ; retract
G1 X171 Y68 F7200 ; move to start
G1 E0 F1800 ; un-retract
G1 X171 Y68.4 E0.016 F1200 ; dot
G1 E-0 F4800 ; retract
G1 X172 Y68 F7200 ; move to start
G1 E0 F1800 ; un-retract
G1 X174 Y68 E0.0799 F1200 ; 0
G1 X174 Y70 E0.0799 F1200 ; 0
G1 X174 Y72 E0.0799 F1200 ; 0
G1 X172 Y72 E0.0799 F1200 ; 0
G1 X172 Y70 E0.0799 F1200 ; 0
G1 X172 Y68 E0.0799 F1200 ; 0
G1 E-0 F4800 ; retract
G1 X175 Y68 F7200 ; move to start
G1 E0 F1800 ; un-retract
G1 X175 Y70 F7200 ; move to start
G1 X177 Y70 E0.0799 F1200 ; 8
G1 X177 Y68 E0.0799 F1200 ; 8
G1 X175 Y68 E0.0799 F1200 ; 8
G1 X175 Y70 E0.0799 F1200 ; 8
G1 X175 Y72 E0.0799 F1200 ; 8
G1 X177 Y72 E0.0799 F1200 ; 8
G1 X177 Y70 E0.0799 F1200 ; 8
G1 E-0 F4800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X168 Y78 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E0 F1800 ; un-retract
G1 X170 Y78 E0.0799 F1200 ; 0
G1 X170 Y80 E0.0799 F1200 ; 0
G1 X170 Y82 E0.0799 F1200 ; 0
G1 X168 Y82 E0.0799 F1200 ; 0
G1 X168 Y80 E0.0799 F1200 ; 0
G1 X168 Y78 E0.0799 F1200 ; 0
G1 E-0 F4800 ; retract
G1 X171 Y78 F7200 ; move to start
G1 E0 F1800 ; un-retract
G1 X171 Y78.4 E0.016 F1200 ; dot
G1 E-0 F4800 ; retract
G1 X172 Y78 F7200 ; move to start
G1 E0 F1800 ; un-retract
G1 X172 Y80 E0.0799 F1200 ; 1
G1 X172 Y82 E0.0799 F1200 ; 1
G1 E-0 F4800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X168 Y88 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E0 F1800 ; un-retract
G1 X170 Y88 E0.0799 F1200 ; 0
G1 X170 Y90 E0.0799 F1200 ; 0
G1 X170 Y92 E0.0799 F1200 ; 0
G1 X168 Y92 E0.0799 F1200 ; 0
G1 X168 Y90 E0.0799 F1200 ; 0
G1 X168 Y88 E0.0799 F1200 ; 0
G1 E-0 F4800 ; retract
G1 X171 Y88 F7200 ; move to start
G1 E0 F1800 ; un-retract
G1 X171 Y88.4 E0.016 F1200 ; dot
G1 E-0 F4800 ; retract
G1 X172 Y88 F7200 ; move to start
G1 E0 F1800 ; un-retract
G1 X172 Y90 E0.0799 F1200 ; 1
G1 X172 Y92 E0.0799 F1200 ; 1
G1 E-0 F4800 ; retract
G1 X173 Y88 F7200 ; move to start
G1 E0 F1800 ; un-retract
G1 X173 Y90 F7200 ; move to start
G1 X173 Y92 F7200 ; move to start
G1 X175 Y92 E0.0799 F1200 ; 2
G1 X175 Y90 E0.0799 F1200 ; 2
G1 X173 Y90 E0.0799 F1200 ; 2
G1 X173 Y88 E0.0799 F1200 ; 2
G1 X175 Y88 E0.0799 F1200 ; 2
G1 E-0 F4800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X168 Y98 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E0 F1800 ; un-retract
G1 X170 Y98 E0.0799 F1200 ; 0
G1 X170 Y100 E0.0799 F1200 ; 0
G1 X170 Y102 E0.0799 F1200 ; 0
G1 X168 Y102 E0.0799 F1200 ; 0
G1 X168 Y100 E0.0799 F1200 ; 0
G1 X168 Y98 E0.0799 F1200 ; 0
G1 E-0 F4800 ; retract
G1 X171 Y98 F7200 ; move to start
G1 E0 F1800 ; un-retract
G1 X171 Y98.4 E0.016 F1200 ; dot
G1 E-0 F4800 ; retract
G1 X172 Y98 F7200 ; move to start
G1 E0 F1800 ; un-retract
G1 X172 Y100 E0.0799 F1200 ; 1
G1 X172 Y102 E0.0799 F1200 ; 1
G1 E-0 F4800 ; retract
G1 X173 Y98 F7200 ; move to start
G1 E0 F1800 ; un-retract
G1 X173 Y100 F7200 ; move to start
G1 X173 Y102 F7200 ; move to start
G1 X173 Y100 E0.0799 F1200 ; 4
G1 X175 Y100 E0.0799 F1200 ; 4
G1 X175 Y102 F7200 ; move to start
G1 X175 Y100 E0.0799 F1200 ; 4
G1 X175 Y98 E0.0799 F1200 ; 4
G1 E-0 F4800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X168 Y108 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E0 F1800 ; un-retract
G1 X170 Y108 E0.0799 F1200 ; 0
G1 X170 Y110 E0.0799 F1200 ; 0
G1 X170 Y112 E0.0799 F1200 ; 0
G1 X168 Y112 E0.0799 F1200 ; 0
G1 X168 Y110 E0.0799 F1200 ; 0
G1 X168 Y108 E0.0799 F1200 ; 0
G1 E-0 F4800 ; retract
G1 X171 Y108 F7200 ; move to start
G1 E0 F1800 ; un-retract
G1 X171 Y108.4 E0.016 F1200 ; dot
G1 E-0 F4800 ; retract
G1 X172 Y108 F7200 ; move to start
G1 E0 F1800 ; un-retract
G1 X172 Y110 E0.0799 F1200 ; 1
G1 X172 Y112 E0.0799 F1200 ; 1
G1 E-0 F4800 ; retract
G1 X173 Y108 F7200 ; move to start
G1 E0 F1800 ; un-retract
G1 X173 Y110 F7200 ; move to start
G1 X175 Y110 E0.0799 F1200 ; 6
G1 X175 Y108 E0.0799 F1200 ; 6
G1 X173 Y108 E0.0799 F1200 ; 6
G1 X173 Y110 E0.0799 F1200 ; 6
G1 X173 Y112 E0.0799 F1200 ; 6
G1 X175 Y112 E0.0799 F1200 ; 6
G1 E-0 F4800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X168 Y118 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E0 F1800 ; un-retract
G1 X170 Y118 E0.0799 F1200 ; 0
G1 X170 Y120 E0.0799 F1200 ; 0
G1 X170 Y122 E0.0799 F1200 ; 0
G1 X168 Y122 E0.0799 F1200 ; 0
G1 X168 Y120 E0.0799 F1200 ; 0
G1 X168 Y118 E0.0799 F1200 ; 0
G1 E-0 F4800 ; retract
G1 X171 Y118 F7200 ; move to start
G1 E0 F1800 ; un-retract
G1 X171 Y118.4 E0.016 F1200 ; dot
G1 E-0 F4800 ; retract
G1 X172 Y118 F7200 ; move to start
G1 E0 F1800 ; un-retract
G1 X172 Y120 E0.0799 F1200 ; 1
G1 X172 Y122 E0.0799 F1200 ; 1
G1 E-0 F4800 ; retract
G1 X173 Y118 F7200 ; move to start
G1 E0 F1800 ; un-retract
G1 X173 Y120 F7200 ; move to start
G1 X175 Y120 E0.0799 F1200 ; 8
G1 X175 Y118 E0.0799 F1200 ; 8
G1 X173 Y118 E0.0799 F1200 ; 8
G1 X173 Y120 E0.0799 F1200 ; 8
G1 X173 Y122 E0.0799 F1200 ; 8
G1 X175 Y122 E0.0799 F1200 ; 8
G1 X175 Y120 E0.0799 F1200 ; 8
G1 E-0 F4800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X168 Y128 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E0 F1800 ; un-retract
G1 X170 Y128 E0.0799 F1200 ; 0
G1 X170 Y130 E0.0799 F1200 ; 0
G1 X170 Y132 E0.0799 F1200 ; 0
G1 X168 Y132 E0.0799 F1200 ; 0
G1 X168 Y130 E0.0799 F1200 ; 0
G1 X168 Y128 E0.0799 F1200 ; 0
G1 E-0 F4800 ; retract
G1 X171 Y128 F7200 ; move to start
G1 E0 F1800 ; un-retract
G1 X171 Y128.4 E0.016 F1200 ; dot
G1 E-0 F4800 ; retract
G1 X172 Y128 F7200 ; move to start
G1 E0 F1800 ; un-retract
G1 X172 Y130 F7200 ; move to start
G1 X172 Y132 F7200 ; move to start
G1 X174 Y132 E0.0799 F1200 ; 2
G1 X174 Y130 E0.0799 F1200 ; 2
G1 X172 Y130 E0.0799 F1200 ; 2
G1 X172 Y128 E0.0799 F1200 ; 2
G1 X174 Y128 E0.0799 F1200 ; 2
G1 E-0 F4800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X168 Y138 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E0 F1800 ; un-retract
G1 X170 Y138 E0.0799 F1200 ; 0
G1 X170 Y140 E0.0799 F1200 ; 0
G1 X170 Y142 E0.0799 F1200 ; 0
G1 X168 Y142 E0.0799 F1200 ; 0
G1 X168 Y140 E0.0799 F1200 ; 0
G1 X168 Y138 E0.0799 F1200 ; 0
G1 E-0 F4800 ; retract
G1 X171 Y138 F7200 ; move to start
G1 E0 F1800 ; un-retract
G1 X171 Y138.4 E0.016 F1200 ; dot
G1 E-0 F4800 ; retract
G1 X172 Y138 F7200 ; move to start
G1 E0 F1800 ; un-retract
G1 X172 Y140 F7200 ; move to start
G1 X172 Y142 F7200 ; move to start
G1 X174 Y142 E0.0799 F1200 ; 2
G1 X174 Y140 E0.0799 F1200 ; 2
G1 X172 Y140 E0.0799 F1200 ; 2
G1 X172 Y138 E0.0799 F1200 ; 2
G1 X174 Y138 E0.0799 F1200 ; 2
G1 E-0 F4800 ; retract
G1 X175 Y138 F7200 ; move to start
G1 E0 F1800 ; un-retract
G1 X175 Y140 F7200 ; move to start
G1 X175 Y142 F7200 ; move to start
G1 X177 Y142 E0.0799 F1200 ; 2
G1 X177 Y140 E0.0799 F1200 ; 2
G1 X175 Y140 E0.0799 F1200 ; 2
G1 X175 Y138 E0.0799 F1200 ; 2
G1 X177 Y138 E0.0799 F1200 ; 2
G1 E-0 F4800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X168 Y148 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E0 F1800 ; un-retract
G1 X170 Y148 E0.0799 F1200 ; 0
G1 X170 Y150 E0.0799 F1200 ; 0
G1 X170 Y152 E0.0799 F1200 ; 0
G1 X168 Y152 E0.0799 F1200 ; 0
G1 X168 Y150 E0.0799 F1200 ; 0
G1 X168 Y148 E0.0799 F1200 ; 0
G1 E-0 F4800 ; retract
G1 X171 Y148 F7200 ; move to start
G1 E0 F1800 ; un-retract
G1 X171 Y148.4 E0.016 F1200 ; dot
G1 E-0 F4800 ; retract
G1 X172 Y148 F7200 ; move to start
G1 E0 F1800 ; un-retract
G1 X172 Y150 F7200 ; move to start
G1 X172 Y152 F7200 ; move to start
G1 X174 Y152 E0.0799 F1200 ; 2
G1 X174 Y150 E0.0799 F1200 ; 2
G1 X172 Y150 E0.0799 F1200 ; 2
G1 X172 Y148 E0.0799 F1200 ; 2
G1 X174 Y148 E0.0799 F1200 ; 2
G1 E-0 F4800 ; retract
G1 X175 Y148 F7200 ; move to start
G1 E0 F1800 ; un-retract
G1 X175 Y150 F7200 ; move to start
G1 X175 Y152 F7200 ; move to start
G1 X175 Y150 E0.0799 F1200 ; 4
G1 X177 Y150 E0.0799 F1200 ; 4
G1 X177 Y152 F7200 ; move to start
G1 X177 Y150 E0.0799 F1200 ; 4
G1 X177 Y148 E0.0799 F1200 ; 4
G1 E-0 F4800 ; retract
G1 Z0.3 F1200 ; zHop
;
; FINISH
;
M107 ; Turn off fan
M400 ; Finish moving
M104 S0 ; Turn off hotend
M140 S0 ; Turn off bed
G1 Z30 X250 Y210 F7200 ; Move away from the print
M84 ; Disable motors
M501 ; Load settings from EEPROM
;
