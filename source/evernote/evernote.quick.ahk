#IfWinActive ahk_class ENSingleNoteView

CoordMode Mouse Window  ; Effect click, coordinate is based on current active window

^w:: ;color teal
Click 256 150 ; trigger color DropDownList
Sleep 1
Click 257 307    ; pick color 
Return

^e:: ;color tangerine
Click 256 150 ; trigger color DropDownList
Sleep 1
Click 400 255    ; pick color 
Return

^a:: ;color plum
Click 256 150 ; trigger color DropDownList
Sleep 1
Click 328 282    ; pick color  
Return

^s:: ;color strawberry
Click 256 150 ; trigger color DropDownList
Sleep 1
Click 351 233    ; pick color
Return

^d:: ;color turquoise
Click 256 150 ; trigger color DropDownList
Sleep 1
Click 256 259    ; pick color
Return

^f:: ;color lemon
Click 256 150 ; trigger color DropDownList
Sleep 1
Click 425 258   ; pick color
Return

^5:: ;color dark grey
Click 256 150 ; trigger color DropDownList
Sleep 1
Click 233 257    ; pick color
Return

^6:: ;color licorice
Click 256 150 ; trigger color DropDownList
Sleep 1
Click 232 303    ; pick color
Return

^7:: ;maraschino
Click 256 150 ; trigger color DropDownList
Sleep 1
Click 377 283   ; pick color
Return



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; #IfWinActive
; CoordMode Mouse Window  ; Effect click, coordinate is based on current active window
; #q:: 
; MouseGetPos, X, Y
; WinGetClass, WClass
; MsgBox %X% %Y% %WClass%
; Return