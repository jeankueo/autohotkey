;========================================================
;       SIL IPA keyboard
;========================================================
;
;Do not change this:
#include BasicRoutines.ahk
;

;========================================================
; The name of the this keyboard
;========================================================
KeyboardName()
{
  Global  ; don't modify this line
  sName        = IPA
}  

;========================================================
; Basic definitions for the keyboard
;========================================================
PrepareValues()
{
  Global
  
; Include the icons into the compiled script:
FileInstall IpaOn.ico, %sIconOn%
FileInstall IpaOff.ico, %sIconOff%

 
; All groups are of form searched value - replaced value  
; eg. .a 0x0251 means replace .a with unicode 0x0251  
; Important> Between the search and the replace value must be exactly one space
; All replace chains must be ended with the last value which was replaced
; otherwise a strange replace behavior may occur
  
; =  
GroupEqual =
(
  $a 0x0251|   $b 0x03b2|   $c 0x00e7|   $d 0x00f0| | 
  $e 0x0259|   $f 0x0278|   $g 0x0263|   $h 0x0265| | 
  $i 0x026a|   $j 0x025f|   $l 0x026c|   $n 0x0272| | 
  $o 0x0252|   $p 0x0298|   $r 0x0279|   $s 0x0283| | 
  $t 0x03b8|   $u 0x026f|   $v 0x028b|   $w 0x028d| |
  $x 0x03c7|   $y 0x028f|   $z 0x0292|   $. 0x01c1| | 
  $? 0x0294|   $B 0x0299|   $E 0x0258|   $G 0x0262| | 
  $H 0x029c|   $I 0x0268|   $L 0x029f|   $N 0x0274| | 
  $O 0x0275|   $Q 0x02a1|   $R 0x0280|   $S 0xf216| | 
  $U 0x0289|   $Z 0xf21c|   $. 0x01c1|   $# 0x203f| |   
  0x01c3 0x01c2|  0x031f 0x002b|  $< 0x2190| |  
)  
  
; <  
GroupArrowLeft =
(
  0xa71c 0x2198 0x2199| |
  $a 0x00e6|   $c 0x0255|   $d 0x0256|   $e 0x025b| |
  $g 0x0261|   $h 0x0266|   $j 0x029d|   $l 0x026d| | 
  $n 0x0273|   $o 0x0254|   $r 0x027d|   $s 0x0282| | 
  $t 0x0288|   $u 0x028a|   $v 0xf25f|   $w 0xf21a| | 
  $y 0x0265| |   
  $z 0x0290|   $? 0x0295|   $E 0x0153|   $I 0x1d7b| |
  $L 0x028e|   $O 0x025e|   $Q 0x02a2|   $R 0x027b| |  
  $. 0x01c0|   $# 0xa71c| |  
  0x01c3 0x01c0|   | 
)  
  
; >  
GroupArrowRight =
(
  0x01c3 0x01c1|  0xa71b 0x2197 0x2196| |
  $a 0x0250|   $b 0x0253|   $c 0x0188|   $d 0x0257| |  
  $e 0x025c|   $g 0x0260|   $h 0x0127|   $j 0x0284| | 
  $k 0x0199|   $l 0x026e|   $m 0x0271|   $n 0x014b| |
  $o 0x00f8|   $p 0x01a5|   $q 0x02a0|   $r 0x027e| | 
  $s 0x03c3|   $t 0x01ad|   $= 0x2192| |
  $u 0x028c|   $w 0x0270|   $z 0x0291| |    
  $A 0x1d02|   $E 0x0152|   $G 0x029b|   $H 0x0267| |  
  $I 0x1d7c| | 
  $L 0x027a|   $O 0x0264|   $R 0x0281|   $S 0x0286| |  
  $U 0xf23f|   $# 0xa71b| |  
)

; ^
GroupSuper =
( 
  $a 0x1d43|   $b 0x1d47|   $c 0x1d9c|   $d 0x1d48| |   
  $e 0x1d49|   $f 0x1da0|   $g 0x1da2|   $h 0x02b0| |  
  $i 0x2071|   $j 0x02b2|   $k 0x1d4f|   $l 0x02e1| |  
  $m 0x1d50|   $n 0x207f|   $o 0x1d52|   $p 0x1d56| |
  $r 0x02b3|   $s 0x02e2|   $t 0x1d57|   $u 0x1d58| |
  $v 0x1d5b|   $w 0x02b7|   $x 0x02e3|   $y 0x02b8| |  
  $z 0x1dbb| |
  $0 0x2070|   $1 0x00B9|   $2 0x00b2|   $3 0x00b3| |  
  $4 0x2074|   $5 0x2075|   $6 0x2076|   $7 0x2077| |
  $8 0x2078|   $9 0x2079| |  
  $( 0x207d|   $) 0x207e|   $= 0x207c| |
  0x00e6 0xf1a1|  0x00f0 0x1d96|  0x00f8 0xf1ab| |
  0x0127 0xf1bc|  0x014b 0x1d51|  0x0152 0xf1ae| | 
  0x0153 0xf1ad| |
  0x0250 0x1d44|  0x0251 0x1d45|  0x0252 0x1d9b| | 
  0x0254 0x1d53|  0x0255 0x1d9d|  0x0257 0x1db1| | 
  0x0258 0xf1a3|  0x0259 0x1d4a| |
  0x025b 0x1d4b|  0x025c 0x1d4c| |
  0x025e 0xf1a4|  0x025f 0x1da1| |
  0x0261 0x1da2|  |
  0x0263 0x1d5e|  0x0264 0xf1b5|  0x0265 0x1da3|  0x0266 0x02b1| 
  0x0268 0x1da4|  0x026a 0x1da6|  0x026d 0x1da9| |
  0x026f 0x1d5a| |
  0x0270 0x1dad|  0x0271 0x1dac|  0x0272 0x1dae|  0x0273 0x1daf|    |
  0x0274 0x1db0|  0x0276 0xf1ae|  | 
  0x0278 0x1db2|  0x0279 0x02b4|  0x027b 0x02b5|
  0x0281 0x02b6|  0x0282 0x1db3|  0x0283 0x1db4|  0x0289 0x1db6|  |
  0x028a 0x1db7|  0x028b 0x1db9|  0x028c 0x1dba|  0x028e 0xf1ce| |
  0x028f 0xf1b4| |
  0x0290 0x1dbc|  0x0291 0x1dbd|  0x0292 0x1dbe|    |
  0x0294 0x02c0|  0x0295 0x02e4|  0x029d 0x1da8|  0x029f 0x1d38| |
  0x03b2 0x1d5d|  0x03b8 0xf1c9|  0x1d02 0x1d46|  0x031f 0x207a| |
  0x0320 0x207b| | 
)


; |
GroupLine =
(
  $a 0x03b1|   $e 0x025e|   $i 0x0269| |     
  $h 0x0452|   $l 0x0234|   $n 0x0235|   $t 0x0236| |     
  $u 0x0277|   $y 0x02ae|   $z 0x027f|   $A 0x1d00| |   
  $E 0x1d07|   $I 0x1d7c|   $T 0x0287| |  
  $U 0x1d7e|   $Y 0x02af|   $Z 0x0285| |   
)

GroupPalatal =
(
  $b 0x1d80|   $d 0x1d81|   $f 0x1d82|   $g 0x1d83| |     
  $k 0x1d84|   $l 0x1d85|   $m 0x1d86|   $n 0x1d87| |   
  $p 0x1d88|   $r 0x1d89|   $s 0x1d8a|   $v 0x1d8c| |   
  $x 0x1d8d|   $z 0x1d8e| |     
)

GroupRetroflex =
(
  $a 0x1d8f|       $e 0x1d92|       $i 0x1d96|       $u 0x1d99| |     
  0x0251 0x1d90|   0x0257 0x1d91|   0x025b 0x1d93|   0x025c 0x1d94| |   
  0x0259 0x1d95|   0x0254 0x1d97|   0x0283 0x1d98|   0x0292 0x1d9a| |  
)

GroupVelarized =
(
  $b 0x1d6c|   $d 0x1d6d|   $f 0x1d6e|   $l 0x026b| |     
  $m 0x1d6f|   $n 0x1d70|   $p 0x1d71|   $r 0x1d72| |     
  $s 0x1d74|   $t 0x1d75|   $z 0x1d76| |      
)

sTones =
(
  0xf1f1 0xf1f2 0xf1f3 0xf1f4 0xf1f5 
  0xf1f6 0xf1f7 0xf1f8 0xf1f9 
)

GroupToneLevel= 
(
  $1 0xf1f1| |   $2 0xf1f2| |   $3 0xf1f3| |   
  $4 0xf1f4| |   $5 0xf1f5| |   $6 0xf1f6| |   
  $7 0xf1f7| |   $8 0xf1f8| |   $9 0xf1f9| |    
)

GroupToneGlide =
(
  0x02e9 $0 0x02e9| |   0x02e9 $1 0x02e8| |   0x02e9 $2 0x02e7| |   
  0x02e9 $3 0x02e6| |   0x02e9 $4 0x02e5| |    
  0x02e8 $0 0x02e9| |   0x02e8 $1 0x02e8| |   0x02e8 $2 0x02e7| |   
  0x02e8 $3 0x02e6| |   0x02e8 $4 0x02e5| |    
  0x02e7 $0 0x02e9| |   0x02e7 $1 0x02e8| |   0x02e7 $2 0x02e7| |   
  0x02e7 $3 0x02e6| |   0x02e7 $4 0x02e5| |    
  0x02e6 $0 0x02e9| |   0x02e6 $1 0x02e8| |   0x02e6 $2 0x02e7| |   
  0x02e6 $3 0x02e6| |   0x02e6 $4 0x02e5| |    
  0x02e5 $0 0x02e9| |   0x02e5 $1 0x02e8| |   0x02e5 $2 0x02e7| |   
  0x02e5 $3 0x02e6| |   0x02e5 $4 0x02e5| | 
)

GroupToneMarks = 
(
  $@ $0 0x030f| |   $@ $1 0x0300| |   $@ $2 0x0304| |
  $@ $3 0x0301| |   $@ $4 0x030b| |   $# $0 0x02e9| |
  $# $0 0x02e9| |   $# $1 0x02e8| |   $# $2 0x02e7| |   $# $3 0x02e6| |
  $# $4 0x02e5| |    
  0x030c $1 0x1dc8| |   0x0302 $3 0x1dc9| |
  0x0301 $1 0x0302| |   0x0304 $1 0xf173| |
  0x0300 $2 0xf172| |   0x0301 $2 0xf174| |   
  0x0304 $3 0xf171| |   0x0300 $3 0x030c| |
  0x0023 $1 0xf1f1| |   0x0023 $2 0xf1f2| |   0x0023 $3 0xf1f3| |   
  0x0023 $4 0xf1f4| |   0x0023 $5 0xf1f5| |   0x0023 $6 0xf1f6| |   
  0x0023 $7 0xf1f7| |   0x0023 $8 0xf1f8| |   0x0023 $9 0xf1f9| |      
)  

GroupAtSign = ( 0x0271 0x0272 0x0273 0x026d 0x014b )


; Chain searches, every replaced value becomes also the next search value
; ø  is a placeholder, for some reason the first item would not be found otherwise 
GroupCBracketLeft        = ( 0x032a 0x033a 0x033b 0x033c 0x0323| )   ; {
GroupCBracketRight       = ( 0x02c8 0x02cc 0x0348 0x1dc2| )          ; }
GroupSBracketLeft        = ( 0x005b 0x02de| )                        ; [ 
GroupSBracketRight       = ( 0x031b 0x031a 0x006d| )                 ; ]
GroupDollar              = ( 0x0329 0x032f 0x0330| )          ; $ 
GroupPercent             = ( 0x0325 0x032c 0x0324| )          ; % 
GroupPlus                = ( 0x031f 0x031d 0x0318 0x0339| )   ; + 
GroupMinus               = ( 0x0320 0x031e 0x0319 0x031c 0x0327| )   ; -
GroupColon               = ( 0x02d0 0x02d1| )                        ; :
GroupStroke              = ( 0x0308 0x033d 0x0306| )                 ; '
GroupAmpersand           = ( 0x0361 0x0360 0x035d 0x035e| $@ 0x035c|  $# 0x0361| )          ; &
GroupStar                = ( 0x0308 0x033d 0x0306 0x0307 0x0310| )   ; * 


; All the modifier keys
sModifier = ( $< $> $= $^ $+ $- $| ${ $} $[ $] $* $& )

; Keys which put out modifiers unaltered:
sModKey  = ( $> $* $| ${ $} $[ $] $^ $& $; $' $" %x% )  

}


;========================================================
;  Input routine for processing keystrokes: 
;========================================================
KeyDown(key)
{
  Global  
  StringCaseSense, On
  
  ;msgbox %LastKey% %LastOutput% %LastBasic%
  if (InGroup(sModifier, key) == True)
    Modify(key)
  
  else if (key = "$~")
    DoTilde()
  
  else if (key = "$$")
    DoDollar()

  else if (key = "$:")
    DoColon()

  else if (key = "$%")
    DoPercent()
  
  else if (key = "$#")
  {
    if (LastOutput = "$#")
      SendKey(0x0023, 1)
    else
      SendKey(key, 0) 
  } 

  else if (key = "$@")
  {
    if (InGroup(GroupAtSign, LastOutput) == True )
    SendKey(0x030a, 0)
  else
      SendKey(key, 0) 
  }  
  
  
  ; two punctuations which need special treatment:  
  else if (key = "$!")
  {
    LastKey := "!"
  SendKey(0x01c3, 0)
  }

  ; Check for numbers:  
  else if (key >= "$0" && key <= "$9")  
  {
    if (InGroup(sTones, lastOutput) == True )
    ExchangeKey(GroupToneLevel, key)
  else if (ExchangeDoubleKey(GroupToneGlide, "") == false)
      ReplaceDoubleKey(GroupToneMarks, key)
  }
  ; if it is nothing else then it is a normal letter  
  else   
  {
    SendKey(key, 0)
  LastBasic := key
  } 
}
return  


;========================================================
;   Processing IPA symbol modifier
;========================================================

Modify(key)
{
  Global
  
  if (InGroup(sModKey, LastOutput) == true) ; Modifier preceded by non ipa character
  SendKey(key, 0)
 
  else
  {
    if (Key = "$<")
  {
      ReplaceLastKey(GroupArrowLeft, key) 
    LastBasic := LastOutput
  }
    else if (Key = "$>") 
  {
      ReplaceLastKey(GroupArrowRight, key) 
    LastBasic := LastOutput
  } 
    else if (Key = "$=") 
  {
      ReplaceLastKey(GroupEqual, key) 
    LastBasic := LastOutput
  }    
  else if (Key = "$^") 
      ReplaceLastKey(GroupSuper, key) 
  
    else if (Key = "$+") 
      ReplaceLastKey(GroupPlus, 0x031f)
  
    else if (Key = "$-") 
      ReplaceLastKey(GroupMinus, 0x0320)

    else if (Key = "$'")
      ReplaceLastKey(GroupStroke, 0x02d0)
  
    else if (Key = "$[") 
      ReplaceLastKey(GroupSBracketLeft, 0x005b)
  
    else if (Key = "$}")
      ReplaceLastKey(GroupCBracketRight, 0x02c8)
  
    else if (Key = "$]") 
      ReplaceLastKey(GroupSBracketRight, 0x031b)
  
    else if (Key = "${")
      ReplaceLastKey(GroupCBracketLeft, 0x032a)
  
    else if (Key = "$*")
      ReplaceLastKey(GroupStar, 0x0308)
  
    else if (Key = "$&")
      ReplaceLastKey(GroupAmpersand, 0x0361)
  
    else if (Key = "$|")
      ReplaceLastKey(GroupLine, key)
  
    else if (Key = "$*")
      ReplaceLastKey(GroupStar, key)  
  }  
  ;msgbox %LastOutput%
}

DoColon()
{
  Global  
  if (LastOutput = 0x02d1) ; do double colon
  {
    SendKey(0x02d0, 1)
    SendKey(0x02d0, 0)
  }
  else
    ReplaceLastKey(GroupColon, 0x02d0)  
}

DoPercent()
{
  Global
  ;msgbox %lastBasic%
  if (LastOutput == 0x0324)
  {
    if (InGroup(GroupPalatal,LastBasic) == true)
  {
    Send {BS}
      ReplaceKeyOpen(GroupPalatal, LastBasic, "")
    ;msgbox %lastBasic% %lastOutput%
      }
  } 
  else  
    ReplaceLastKey(GroupPercent, 0x0325)
}

DoTilde()
{
  Global
  if (LastOutput == 0x0303)
  {
    if (InGroup(GroupVelarized,LastBasic) == true)
  {
    Send {BS}
      ReplaceKeyOpen(GroupVelarized, LastBasic, "")
  }  
  } 
  else
    SendKey(0x0303, 0)
}

DoDollar()
{
  Global
  if (LastOutput == 0x0330)
  {
    if (InGroup(GroupRetroflex,LastBasic) == true)
  {
    Send {BS}  
      ReplaceKeyOpen(GroupRetroflex, LastBasic, "")
  }  
  } 
  else  
    ReplaceLastKey(GroupDollar, 0x0329)
}