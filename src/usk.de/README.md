# Autohotkey Script for US International layout keyboard + DEU input method

Purpose
--------------
I have a US layout keyboard, but I need to use German input method, so as to type typical German umlaut like üöäß. German keyboard has an extra physical key right to left shift key which types "><|".  To type these impossible symbols (due to this missing key in this weird input method and keyboard layout combination), I wrote this simple script to simulate this key. See following img. White deutsch keyboard has extra key which is highlighted. The marked the keys on black US keyboard are used to simulate this key.

Deu | US
--------- | --------
![](./img/IMG_7758.JPG) | ![](./img/IMG_7759.JPG)

Heads up before usage
--------------
* MAC German input does not have this problem, there are combination available already.

Install Steps
--------------
* Install Autohotkey from [Autohotkey website](https://autohotkey.com/)
* Download file [uk.keyboard.for.de.input.method.ahk](./uk.keyboard.for.de.input.method.ahk) to your PC and double click, an instance of autohotkey will run. 
* Now you can use the hotkeys. 

Key map defined in Script
--------------

Keys | Output
--------- | --------
win + y  | <
win + shift + y  | > 
win + alt     | \|
