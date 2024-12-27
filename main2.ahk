#NoEnv
#SingleInstance force
#IfWinActive ahk_class grcWindow
SetBatchLines -1
ListLines Off
SleepDuration := 1
TimePeriod := 3
Process, Priority,, High
SetKeyDelay, 1 ,-1
SetControlDelay, 0
SetMouseDelay, -1
#MaxHotkeysPerInterval 9999999999
SetDefaultMouseSpeed, 0
SetStoreCapsLockMode, Off
SetWinDelay, 0
F1::suspend


*F3::
BlockInput, On
sendinput {blind}{M down}
send {blind}{m up}{m up}
DllCall("SetCursorPos", int, 236, int, 322)
sendinput {blind}{click down}
send {blind}{enter down}
sendinput {blind}{click up}
send {blind}{enter up}{enter}
Sleep ,80
Send {right}{up down}{enter}{m}
sendinput {blind}{up up}{F5 up}{ctrl up}
BlockInput, Off
return





; By Sparrow niggas ↓

*Lalt::
send {Blind}{3}{4 down}
send {Blind}{tab}
send {Blind}{4 up}
return

*1::
Send, {Blind}{1 Down}{Tab}
SendInput, {Blind}{1 Up}
return

*3::
Send, {Blind}{3 Down}{Tab}
SendInput, {Blind}{3 Up}
return
