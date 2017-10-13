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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#IfWinActive
CoordMode Mouse Window  ; Effect click, coordinate is based on current active window
#q:: 
MouseGetPos, X, Y
WinGetClass, WClass
MsgBox %X% %Y% %WClass%
Return