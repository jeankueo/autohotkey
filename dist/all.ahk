Menu, Tray, Icon, ./Nut.ico

 #IfWinActive
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

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

^c:: ; Comic Sans MS
ControlSetText, Edit1,Cosmic Sans MS
Sleep 1
ControlFocus, Edit1
Sleep 1
Send {Enter}
Return

^k::
ControlSetText, Edit1,楷体
Sleep 1
ControlFocus, Edit1
Sleep 1
Send {Enter}
Return

 #IfWinActive
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#IfWinActive ahk_class SAP_FRONTEND_SESSION
CoordMode Mouse Window  ; Effect click, coordinate is based on current active window

#m::
Click 77 54
Send /nmdrs {Enter}
Return

#+m::
Click 77 54
Send /omdrs {Enter}
Return

#b::
Click 77 54
Send /nsesfts {Enter}
Return

#+b::
Click 77 54
Send /osesfts {Enter}
Return

#c::
Click 77 54
Send /nse24 {Enter}
Return

#+c::
Click 77 54
Send /ose24 {Enter}
Return

#f::
Click 77 54
Send /nse37 {Enter}
Return

#+f::
Click 77 54
Send /ose37 {Enter}
Return

#p::
Click 77 54
Send /nse38 {Enter}
Return

#+p::
Click 77 54
Send /ose38 {Enter}
Return

#a::
Click 77 54
Send /nse80 {Enter}
Return

#+a::
Click 77 54
Send /ose80 {Enter}
Return

#t::
Click 77 54
Send /nse09 {Enter}
Return

#+t::
Click 77 54
Send /ose09 {Enter}
Return

#s::
Click 77 54
Send /nse09crel {Enter}
Return

#+s::
Click 77 54
Send /ose09crel {Enter}
Return

#d::
Click 77 54
Send /nse11 {Enter}
Return

#+d::
Click 77 54
Send /ose11 {Enter}
Return

 #IfWinActive
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#y:: Send <
#+y:: Send >
!#y:: Send |

 #IfWinActive
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
