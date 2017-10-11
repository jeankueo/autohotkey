#IfWinActive ahk_class ENSingleNoteView

CoordMode Mouse Window  ; Effect click, coordinate is based on current active window

^w:: ;color teal
Click 256 150 ; trigger color DropDownList
Sleep 1
Click 271 329 ; trigger more color List
Sleep 1
Click 125 170    ; pick color 
Sleep 1
Click 43 306    ; confirm
Return

^e:: ;color tangerine
Click 256 150 ; trigger color DropDownList
Sleep 1
Click 271 329 ; trigger more color List
Sleep 1
Click 47 126    ; pick color 
Sleep 1
Click 43 306    ; confirm
Return

^a:: ;color plum
Click 256 150 ; trigger color DropDownList
Sleep 1
Click 271 329 ; trigger more color List
Sleep 1
Click 176 126    ; pick color  
Sleep 1
Click 43 306    ; confirm
Return

^s:: ;color stawberry
Click 256 150 ; trigger color DropDownList
Sleep 1
Click 271 329 ; trigger more color List
Sleep 1
Click 205 103    ; pick color
Sleep 1
Click 43 306    ; confirm
Return

^d:: ;color turquoise
Click 256 150 ; trigger color DropDownList
Sleep 1
Click 271 329 ; trigger more color List
Sleep 1
Click 127 84    ; pick color
Sleep 1
Click 43 306    ; confirm
Return

^f:: ;color lemon
Click 256 150 ; trigger color DropDownList
Sleep 1
Click 271 329 ; trigger more color List
Sleep 1
Click 50 84    ; pick color
Sleep 1
Click 43 306    ; confirm
Return

^5:: ;color snow
Click 256 150 ; trigger color DropDownList
Sleep 1
Click 271 329 ; trigger more color List
Sleep 1
Click 202 170    ; pick color
Sleep 1
Click 43 306    ; confirm
Return

^6:: ;color licorice
Click 256 150 ; trigger color DropDownList
Sleep 1
Click 271 329 ; trigger more color List
Sleep 1
Click 28 170    ; pick color
Sleep 1
Click 43 306    ; confirm
Return

^7:: ;maraschino
Click 256 150 ; trigger color DropDownList
Sleep 1
Click 271 329 ; trigger more color List
Sleep 1
Click 22 84   ; pick color
Sleep 1
Click 43 306    ; confirm
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#IfWinActive
CoordMode Mouse Window  ; Effect click, coordinate is based on current active window
#q:: 
MouseGetPos, X, Y
WinGetClass, WClass
MsgBox %X% %Y% %WClass%
Return