; ### Marlin K-Factor Calibration Pattern ###
; -------------------------------------------
;
; Printer: Odette
; Filament: PLA Hatchbox white
; Created: Tue May 19 2020 10:17:14 GMT-0400 (heure d’été de l’Est)
;
; Settings Printer:
; Filament Diameter = 1.75 mm
; Nozzle Diameter = 0.4 mm
; Nozzle Temperature = 225 °C
; Bed Temperature = 70 °C
; Retraction Distance = 1 mm
; Layer Height = 0.2 mm
; Z-axis Offset = 0 mm
;
; Settings Print Bed:
; Bed Shape = Rect
; Bed Size X = 250 mm
; Bed Size Y = 210 mm
; Origin Bed Center = false
;
; Settings Speed:
; Slow Printing Speed = 1200 mm/min
; Fast Printing Speed = 4800 mm/min
; Movement Speed = 7200 mm/min
; Retract Speed = 1800 mm/min
; Printing Acceleration = 500 mm/s^2
; Jerk X-axis =  firmware default
; Jerk Y-axis =  firmware default
; Jerk Z-axis =  firmware default
; Jerk Extruder =  firmware default
;
; Settings Pattern:
; Linear Advance Version = 1.5
; Starting Value Factor = 0
; Ending Value Factor = 2
; Factor Stepping = 0.1
; Test Line Spacing = 5 mm
; Test Line Length Slow = 20 mm
; Test Line Length Fast = 40 mm
; Print Pattern = Standard
; Print Frame = false
; Number Lines = true
; Print Size X = 98 mm
; Print Size Y = 125 mm
; Print Rotation = 0 degree
;
; Settings Advance:
; Nozzle / Line Ratio = 1.2
; Bed leveling = 0
; Use FWRETRACT = false
; Extrusion Multiplier = 1
; Prime Nozzle = true
; Prime Extrusion Multiplier = 2.5
; Prime Speed = 1800
; Dwell Time = 2 s
;
; prepare printing
;
M104 S160 ; Set nozzle temperature (no wait)
M190 S70 ; Set bed temperature (wait)
G21 ; Millimeter units
G90 ; Absolute XYZ
M83 ; Relative E
G28 ; Home all axes
G1 Z5 F100 ; Z raise
M109 S225 ; Wait for nozzle temp
M204 P500 ; Acceleration
G92 E0 ; Reset extruder distance
G1 X125 Y105 F7200 ; move to start
G1 Z0.2 F1200 ; Move to layer height
;
; prime nozzle
;
G1 X76 Y42.5 F7200 ; move to start
G1 X76 Y167.5 E12.4726 F1800 ; print line
G1 X76.72 Y167.5 F7200 ; move to start
G1 X76.72 Y42.5 E12.4726 F1800 ; print line
G1 E-1 F1800 ; retract
;
; start the Test pattern
;
G4 P2000 ; Pause (dwell) for 2 seconds
G1 X86 Y42.5 F7200 ; move to start
M900 K0 ; set K-factor
M117 K0 ; 
G1 E1 F1800 ; un-retract
G1 X106 Y42.5 E0.7982 F1200 ; print line
G1 X146 Y42.5 E1.5965 F4800 ; print line
G1 X166 Y42.5 E0.7982 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X86 Y47.5 F7200 ; move to start
M900 K0.1 ; set K-factor
M117 K0.1 ; 
G1 E1 F1800 ; un-retract
G1 X106 Y47.5 E0.7982 F1200 ; print line
G1 X146 Y47.5 E1.5965 F4800 ; print line
G1 X166 Y47.5 E0.7982 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X86 Y52.5 F7200 ; move to start
M900 K0.2 ; set K-factor
M117 K0.2 ; 
G1 E1 F1800 ; un-retract
G1 X106 Y52.5 E0.7982 F1200 ; print line
G1 X146 Y52.5 E1.5965 F4800 ; print line
G1 X166 Y52.5 E0.7982 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X86 Y57.5 F7200 ; move to start
M900 K0.3 ; set K-factor
M117 K0.3 ; 
G1 E1 F1800 ; un-retract
G1 X106 Y57.5 E0.7982 F1200 ; print line
G1 X146 Y57.5 E1.5965 F4800 ; print line
G1 X166 Y57.5 E0.7982 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X86 Y62.5 F7200 ; move to start
M900 K0.4 ; set K-factor
M117 K0.4 ; 
G1 E1 F1800 ; un-retract
G1 X106 Y62.5 E0.7982 F1200 ; print line
G1 X146 Y62.5 E1.5965 F4800 ; print line
G1 X166 Y62.5 E0.7982 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X86 Y67.5 F7200 ; move to start
M900 K0.5 ; set K-factor
M117 K0.5 ; 
G1 E1 F1800 ; un-retract
G1 X106 Y67.5 E0.7982 F1200 ; print line
G1 X146 Y67.5 E1.5965 F4800 ; print line
G1 X166 Y67.5 E0.7982 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X86 Y72.5 F7200 ; move to start
M900 K0.6 ; set K-factor
M117 K0.6 ; 
G1 E1 F1800 ; un-retract
G1 X106 Y72.5 E0.7982 F1200 ; print line
G1 X146 Y72.5 E1.5965 F4800 ; print line
G1 X166 Y72.5 E0.7982 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X86 Y77.5 F7200 ; move to start
M900 K0.7 ; set K-factor
M117 K0.7 ; 
G1 E1 F1800 ; un-retract
G1 X106 Y77.5 E0.7982 F1200 ; print line
G1 X146 Y77.5 E1.5965 F4800 ; print line
G1 X166 Y77.5 E0.7982 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X86 Y82.5 F7200 ; move to start
M900 K0.8 ; set K-factor
M117 K0.8 ; 
G1 E1 F1800 ; un-retract
G1 X106 Y82.5 E0.7982 F1200 ; print line
G1 X146 Y82.5 E1.5965 F4800 ; print line
G1 X166 Y82.5 E0.7982 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X86 Y87.5 F7200 ; move to start
M900 K0.9 ; set K-factor
M117 K0.9 ; 
G1 E1 F1800 ; un-retract
G1 X106 Y87.5 E0.7982 F1200 ; print line
G1 X146 Y87.5 E1.5965 F4800 ; print line
G1 X166 Y87.5 E0.7982 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X86 Y92.5 F7200 ; move to start
M900 K1 ; set K-factor
M117 K1 ; 
G1 E1 F1800 ; un-retract
G1 X106 Y92.5 E0.7982 F1200 ; print line
G1 X146 Y92.5 E1.5965 F4800 ; print line
G1 X166 Y92.5 E0.7982 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X86 Y97.5 F7200 ; move to start
M900 K1.1 ; set K-factor
M117 K1.1 ; 
G1 E1 F1800 ; un-retract
G1 X106 Y97.5 E0.7982 F1200 ; print line
G1 X146 Y97.5 E1.5965 F4800 ; print line
G1 X166 Y97.5 E0.7982 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X86 Y102.5 F7200 ; move to start
M900 K1.2 ; set K-factor
M117 K1.2 ; 
G1 E1 F1800 ; un-retract
G1 X106 Y102.5 E0.7982 F1200 ; print line
G1 X146 Y102.5 E1.5965 F4800 ; print line
G1 X166 Y102.5 E0.7982 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X86 Y107.5 F7200 ; move to start
M900 K1.3 ; set K-factor
M117 K1.3 ; 
G1 E1 F1800 ; un-retract
G1 X106 Y107.5 E0.7982 F1200 ; print line
G1 X146 Y107.5 E1.5965 F4800 ; print line
G1 X166 Y107.5 E0.7982 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X86 Y112.5 F7200 ; move to start
M900 K1.4 ; set K-factor
M117 K1.4 ; 
G1 E1 F1800 ; un-retract
G1 X106 Y112.5 E0.7982 F1200 ; print line
G1 X146 Y112.5 E1.5965 F4800 ; print line
G1 X166 Y112.5 E0.7982 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X86 Y117.5 F7200 ; move to start
M900 K1.5 ; set K-factor
M117 K1.5 ; 
G1 E1 F1800 ; un-retract
G1 X106 Y117.5 E0.7982 F1200 ; print line
G1 X146 Y117.5 E1.5965 F4800 ; print line
G1 X166 Y117.5 E0.7982 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X86 Y122.5 F7200 ; move to start
M900 K1.6 ; set K-factor
M117 K1.6 ; 
G1 E1 F1800 ; un-retract
G1 X106 Y122.5 E0.7982 F1200 ; print line
G1 X146 Y122.5 E1.5965 F4800 ; print line
G1 X166 Y122.5 E0.7982 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X86 Y127.5 F7200 ; move to start
M900 K1.7 ; set K-factor
M117 K1.7 ; 
G1 E1 F1800 ; un-retract
G1 X106 Y127.5 E0.7982 F1200 ; print line
G1 X146 Y127.5 E1.5965 F4800 ; print line
G1 X166 Y127.5 E0.7982 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X86 Y132.5 F7200 ; move to start
M900 K1.8 ; set K-factor
M117 K1.8 ; 
G1 E1 F1800 ; un-retract
G1 X106 Y132.5 E0.7982 F1200 ; print line
G1 X146 Y132.5 E1.5965 F4800 ; print line
G1 X166 Y132.5 E0.7982 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X86 Y137.5 F7200 ; move to start
M900 K1.9 ; set K-factor
M117 K1.9 ; 
G1 E1 F1800 ; un-retract
G1 X106 Y137.5 E0.7982 F1200 ; print line
G1 X146 Y137.5 E1.5965 F4800 ; print line
G1 X166 Y137.5 E0.7982 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X86 Y142.5 F7200 ; move to start
;
; Mark the test area for reference
M117 K0
M900 K0 ; Set K-factor 0
G1 X106 Y147.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X106 Y167.5 E0.7982 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X146 Y147.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X146 Y167.5 E0.7982 F1200 ; print line
G1 E-1 F1800 ; retract
G1 Z0.3 F1200 ; zHop
;
; print K-values
;
G1 X168 Y40.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E1 F1800 ; un-retract
G1 X170 Y40.5 E0.0798 F1200 ; 0
G1 X170 Y42.5 E0.0798 F1200 ; 0
G1 X170 Y44.5 E0.0798 F1200 ; 0
G1 X168 Y44.5 E0.0798 F1200 ; 0
G1 X168 Y42.5 E0.0798 F1200 ; 0
G1 X168 Y40.5 E0.0798 F1200 ; 0
G1 E-1 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X168 Y50.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E1 F1800 ; un-retract
G1 X170 Y50.5 E0.0798 F1200 ; 0
G1 X170 Y52.5 E0.0798 F1200 ; 0
G1 X170 Y54.5 E0.0798 F1200 ; 0
G1 X168 Y54.5 E0.0798 F1200 ; 0
G1 X168 Y52.5 E0.0798 F1200 ; 0
G1 X168 Y50.5 E0.0798 F1200 ; 0
G1 E-1 F1800 ; retract
G1 X171 Y50.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X171 Y50.9 E0.016 F1200 ; dot
G1 E-1 F1800 ; retract
G1 X172 Y50.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X172 Y52.5 F7200 ; move to start
G1 X172 Y54.5 F7200 ; move to start
G1 X174 Y54.5 E0.0798 F1200 ; 2
G1 X174 Y52.5 E0.0798 F1200 ; 2
G1 X172 Y52.5 E0.0798 F1200 ; 2
G1 X172 Y50.5 E0.0798 F1200 ; 2
G1 X174 Y50.5 E0.0798 F1200 ; 2
G1 E-1 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X168 Y60.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E1 F1800 ; un-retract
G1 X170 Y60.5 E0.0798 F1200 ; 0
G1 X170 Y62.5 E0.0798 F1200 ; 0
G1 X170 Y64.5 E0.0798 F1200 ; 0
G1 X168 Y64.5 E0.0798 F1200 ; 0
G1 X168 Y62.5 E0.0798 F1200 ; 0
G1 X168 Y60.5 E0.0798 F1200 ; 0
G1 E-1 F1800 ; retract
G1 X171 Y60.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X171 Y60.9 E0.016 F1200 ; dot
G1 E-1 F1800 ; retract
G1 X172 Y60.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X172 Y62.5 F7200 ; move to start
G1 X172 Y64.5 F7200 ; move to start
G1 X172 Y62.5 E0.0798 F1200 ; 4
G1 X174 Y62.5 E0.0798 F1200 ; 4
G1 X174 Y64.5 F7200 ; move to start
G1 X174 Y62.5 E0.0798 F1200 ; 4
G1 X174 Y60.5 E0.0798 F1200 ; 4
G1 E-1 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X168 Y70.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E1 F1800 ; un-retract
G1 X170 Y70.5 E0.0798 F1200 ; 0
G1 X170 Y72.5 E0.0798 F1200 ; 0
G1 X170 Y74.5 E0.0798 F1200 ; 0
G1 X168 Y74.5 E0.0798 F1200 ; 0
G1 X168 Y72.5 E0.0798 F1200 ; 0
G1 X168 Y70.5 E0.0798 F1200 ; 0
G1 E-1 F1800 ; retract
G1 X171 Y70.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X171 Y70.9 E0.016 F1200 ; dot
G1 E-1 F1800 ; retract
G1 X172 Y70.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X172 Y72.5 F7200 ; move to start
G1 X174 Y72.5 E0.0798 F1200 ; 6
G1 X174 Y70.5 E0.0798 F1200 ; 6
G1 X172 Y70.5 E0.0798 F1200 ; 6
G1 X172 Y72.5 E0.0798 F1200 ; 6
G1 X172 Y74.5 E0.0798 F1200 ; 6
G1 X174 Y74.5 E0.0798 F1200 ; 6
G1 E-1 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X168 Y80.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E1 F1800 ; un-retract
G1 X170 Y80.5 E0.0798 F1200 ; 0
G1 X170 Y82.5 E0.0798 F1200 ; 0
G1 X170 Y84.5 E0.0798 F1200 ; 0
G1 X168 Y84.5 E0.0798 F1200 ; 0
G1 X168 Y82.5 E0.0798 F1200 ; 0
G1 X168 Y80.5 E0.0798 F1200 ; 0
G1 E-1 F1800 ; retract
G1 X171 Y80.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X171 Y80.9 E0.016 F1200 ; dot
G1 E-1 F1800 ; retract
G1 X172 Y80.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X172 Y82.5 F7200 ; move to start
G1 X174 Y82.5 E0.0798 F1200 ; 8
G1 X174 Y80.5 E0.0798 F1200 ; 8
G1 X172 Y80.5 E0.0798 F1200 ; 8
G1 X172 Y82.5 E0.0798 F1200 ; 8
G1 X172 Y84.5 E0.0798 F1200 ; 8
G1 X174 Y84.5 E0.0798 F1200 ; 8
G1 X174 Y82.5 E0.0798 F1200 ; 8
G1 E-1 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X168 Y90.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E1 F1800 ; un-retract
G1 X168 Y92.5 E0.0798 F1200 ; 1
G1 X168 Y94.5 E0.0798 F1200 ; 1
G1 E-1 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X168 Y100.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E1 F1800 ; un-retract
G1 X168 Y102.5 E0.0798 F1200 ; 1
G1 X168 Y104.5 E0.0798 F1200 ; 1
G1 E-1 F1800 ; retract
G1 X169 Y100.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X169 Y100.9 E0.016 F1200 ; dot
G1 E-1 F1800 ; retract
G1 X170 Y100.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X170 Y102.5 F7200 ; move to start
G1 X170 Y104.5 F7200 ; move to start
G1 X172 Y104.5 E0.0798 F1200 ; 2
G1 X172 Y102.5 E0.0798 F1200 ; 2
G1 X170 Y102.5 E0.0798 F1200 ; 2
G1 X170 Y100.5 E0.0798 F1200 ; 2
G1 X172 Y100.5 E0.0798 F1200 ; 2
G1 E-1 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X168 Y110.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E1 F1800 ; un-retract
G1 X168 Y112.5 E0.0798 F1200 ; 1
G1 X168 Y114.5 E0.0798 F1200 ; 1
G1 E-1 F1800 ; retract
G1 X169 Y110.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X169 Y110.9 E0.016 F1200 ; dot
G1 E-1 F1800 ; retract
G1 X170 Y110.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X170 Y112.5 F7200 ; move to start
G1 X170 Y114.5 F7200 ; move to start
G1 X170 Y112.5 E0.0798 F1200 ; 4
G1 X172 Y112.5 E0.0798 F1200 ; 4
G1 X172 Y114.5 F7200 ; move to start
G1 X172 Y112.5 E0.0798 F1200 ; 4
G1 X172 Y110.5 E0.0798 F1200 ; 4
G1 E-1 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X168 Y120.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E1 F1800 ; un-retract
G1 X168 Y122.5 E0.0798 F1200 ; 1
G1 X168 Y124.5 E0.0798 F1200 ; 1
G1 E-1 F1800 ; retract
G1 X169 Y120.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X169 Y120.9 E0.016 F1200 ; dot
G1 E-1 F1800 ; retract
G1 X170 Y120.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X170 Y122.5 F7200 ; move to start
G1 X172 Y122.5 E0.0798 F1200 ; 6
G1 X172 Y120.5 E0.0798 F1200 ; 6
G1 X170 Y120.5 E0.0798 F1200 ; 6
G1 X170 Y122.5 E0.0798 F1200 ; 6
G1 X170 Y124.5 E0.0798 F1200 ; 6
G1 X172 Y124.5 E0.0798 F1200 ; 6
G1 E-1 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X168 Y130.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E1 F1800 ; un-retract
G1 X168 Y132.5 E0.0798 F1200 ; 1
G1 X168 Y134.5 E0.0798 F1200 ; 1
G1 E-1 F1800 ; retract
G1 X169 Y130.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X169 Y130.9 E0.016 F1200 ; dot
G1 E-1 F1800 ; retract
G1 X170 Y130.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X170 Y132.5 F7200 ; move to start
G1 X172 Y132.5 E0.0798 F1200 ; 8
G1 X172 Y130.5 E0.0798 F1200 ; 8
G1 X170 Y130.5 E0.0798 F1200 ; 8
G1 X170 Y132.5 E0.0798 F1200 ; 8
G1 X170 Y134.5 E0.0798 F1200 ; 8
G1 X172 Y134.5 E0.0798 F1200 ; 8
G1 X172 Y132.5 E0.0798 F1200 ; 8
G1 E-1 F1800 ; retract
G1 Z0.3 F1200 ; zHop
;
; FINISH
;
M104 S0 ; Turn off hotend
M140 S0 ; Turn off bed
G1 Z30 X250 Y210 F7200 ; Move away from the print
M84 ; Disable motors
M501 ; Load settings from EEPROM
;
