#NoEnv
SetWorkingDir %A_ScriptDir%
#IfWinActive ahk_class grcWindow
#SingleInstance, force
#MaxHotkeysPerInterval 99000000
#HotkeyInterval 99000000
#MaxThreadsBuffer On
#Persistent
#KeyHistory 0
Process, Priority, , High
Process, Priority, gta5.exe, High
SetBatchLines, -1
IntMenuDelay := -1        
KeySendDelay := -1 
KeyPressDuration := -1 
ListLines, Off
SetStoreCapslockMode, Off
SetDefaultMouseSpeed, 0
SetKeyDelay, -1 , -1 ; for high fps
SetMouseDelay, 1
SetControlDelay, -1
SetWinDelay, -1 ; It is necessary for scripts that have the WinActivate etc commands

Ewo := "*sc29" ; "`", "Ё"
EwoCodes := ">+=" ; RightShift+=
BuyAll := "*~$NumpadAdd"
BST := "*~$NumpadPgUp" ; 9
Armor := "*~$NumpadMult" ; *
FastSpawnC4 := "*~$F3"
FastSpawnStinger := "$F2"
Thermal := "*$F1"
Respawn := "NumpadSub" ; -
Jobs := "*~$NumpadDown" ; 2
BugThermal := "*$NumpadHome" ; 7
SpamClipboard := "*NumpadDiv" ; /
AntiAfk := ">+-" ; RightShift+-
Ceo := "*F5"
Mc := "<+F5"
QuitCeo := "*~$F6"
CeoGhost := "*~$F7"
RcBandito := "*~$F8"
SpamClipboard2 := "*~$End"
1 := "*1"
2 := "*2"
3 := "*3"
4 := "*4"
5 := "*5"
LoadoutOn := "<+b" ; LeftShift+B
LoadoutOff := "<+n" ; LeftShift+N
Bribe := "<+F7" ; LeftShift+F7
Tp := ">^Enter" ; RightControl+Enter
Zmeyka := ">+9" ; RightSHift+9
Zmeyka2 := ">+8" ; RightSHift+8
Zmeyka3 := ">+7" ; RightSHift+7
Zmeyka4 := ">+6" ; RightSHift+6
SnacksHax := ">+Down" ; RightSHift+Down
Snacks := "*~$NumpadEnd" ; 1
SnowOff := ">+Left" ; RightSHift+Left
SnowOn := ">+Right" ; RightSHift+Right

; xTabMacro = NumpadEnter
; JetBreak = Numpad3
; Strafe = Numpad0

Hotkey, *~$sc53, xTabMacroOff
Hotkey, *~$NumpadEnter, xTabMacroOn
Hotkey, *~$NumpadDel, JetBreakOff
Hotkey, *~$NumpadPgDn, JetBreakOn
Hotkey, *~$NumpadDot, StrafeOff
Hotkey, *~$NumpadIns, StrafeOn

Hotkey, *x, x, On
Hotkey, ~Shift, JetBreak, On
Hotkey, *~$q, Strafe, On

Hotkey, *x, x, Off
Hotkey, ~Shift, JetBreak, Off
Hotkey, *~$q, Strafe, Off

Hotkey, %BuyAll%, BuyAll
Hotkey, %Ewo%, Ewo
Hotkey, %EwoCodes%, EwoCodes
Hotkey, %BST%, BST
Hotkey, %Armor%, Armor
Hotkey, %FastSpawnC4%, FastSpawnC4
Hotkey, %FastSpawnStinger%, FastSpawnStinger
Hotkey, %Respawn%, Respawn
Hotkey, %Jobs%, Jobs
Hotkey, %Thermal%, Thermal
Hotkey, %BugThermal%, BugThermal
Hotkey, %SpamClipboard%, SpamClipboard
Hotkey, %AntiAfk%, AntiAfk
Hotkey, %Ceo%, Ceo
Hotkey, %Mc%, Mc
Hotkey, %QuitCeo%, QuitCeo
Hotkey, %CeoGhost%, CeoGhost
Hotkey, %RcBandito%, RcBandito
Hotkey, %SpamClipboard2%, SpamClipboard2
Hotkey, %1%, 1
Hotkey, %2%, 2
Hotkey, %3%, 3
Hotkey, %4%, 4
Hotkey, %5%, 5
Hotkey, %LoadoutOn%, LoadoutOn
Hotkey, %LoadoutOff%, LoadoutOff
Hotkey, %Bribe%, Bribe
Hotkey, %Tp%, Tp
Hotkey, %Zmeyka%, Zmeyka
Hotkey, %Zmeyka2%, Zmeyka2
Hotkey, %Zmeyka3%, Zmeyka3
Hotkey, %Zmeyka4%, Zmeyka4
Hotkey, %SnacksHax%, SnacksHax
Hotkey, %Snacks%, Snacks
Hotkey, %SnowOff%, SnowOff
Hotkey, %SnowOn%, SnowOn
return

Setkeydelay, KeySendDelay, KeyPressDuration

F12:: Suspend ; Pause Script
>+F12::
Run, kekmenu.ahk ; Reload Script
Process, Close, GTAHax.exe  ; RightShift+F12 Reload Script
>^F12:: ExitApp ; RightControl+F12
RShift:: Pause
return

xTabMacroOn:
Hotkey, *x, x, On
return

xTabMacroOff:
Hotkey, *x, x, Off
return

JetBreakOn:
Hotkey, ~Shift, JetBreak, On
return

JetBreakOff:
Hotkey, ~Shift, JetBreak, Off
return

StrafeOn:
Hotkey, *~$q, Strafe, On
return

StrafeOff:
Hotkey, *~$q, Strafe, Off
return

; OLD EWO 2023 :cry:

; SetCapsLockState, Off - отключение CapsLock'a
;Ewo:
;Send, {Blind}{LButton Down}
;SendInput, {Blind}{RButton Up}{W Up}{Shift Up}{LButton Up}{R Down}{Up Down}{Enter Down}{m Down}{C Down}{0 Down}
;Send, {Blind}{m Up}{Up Up}{WheelUp Down}
;SendInput, {Enter Up}{WheelUp Up}
;Send, {C Up}{R Up}{0 Up}
;return

;MouseMove, -112.5, 0, [, 0, R]
; -112.5 = 180 degrees
;MouseMove, -84.37, 0, [, 0, R]
; -84.37 = Fake C
;MouseMove, -56.25, 0, [, 0, R]
; -56.25 = 90 degrees
;MouseMove, -37.5, 0, [, 0, R]
; -37.5 = 45 degrees

Ewo:
{
WinWait, ahk_pid %PID%
Send, {Blind}{LButton Down}
SendInput, {Blind}{RButton Up}{LButton Up}{R Down}{m Down}{0 Down}
MouseMove, -84.37, 0, [, 0, R]
Send, {Blind}{m Up}{Up 2}
ControlClick, Button1
Send, {LButton Up}{R Up}{0 Up}
Process, priority, , High
}
return

EwoCodes:
{
Run, GTAHax.exe, , min, PID
WinWait, ahk_pid %PID%
ControlSend, Edit1, {Right}{Backspace}1574588 ; 1574582+6
;ControlSend, Edit2, {Right}{Backspace}6
ControlSend, Edit8, {Right}{Backspace}1
Process, priority, , High
}
return

; Ewo MouseMove Camera

;Ewo:
;{
;WinWait, ahk_pid %PID%
;Send, {Blind}{LButton Down}
;SendInput, {Blind}{RButton Up}{LButton Up}{R Down}{m Down}{0 Down}
;MouseMove, -112.5, 0, [, 0, R]
;Send, {Blind}{m Up}{Up 2}
;ControlClick, Button1
;Send, {LButton Up}{R Up}{0 Up}
;Process, priority, , High
;}
;return

; C Ewo

;Ewo:
;{
;WinWait, ahk_pid %PID%
;Send, {Blind}{LButton Down}
;SendInput, {Blind}{RButton Up}{W Up}{Shift Up}{LButton Up}{m Down}{C Down}{0 Down}
;Send, {Blind}{m Up}{Up 2}
;ControlClick, Button1
;Send, {LButton Up}{C Up}{0 Up}
;Process, priority, , High
;}
;return

SpamClipboard2:
Loop 5
{
Send, {Blind}{t}{Enter Down}
Sleep, 25 ; 25, or 1 if SetKeyDelay, -1, -1 not used
SendInput, {Raw}%Clipboard%
Send, {Blind}{Enter Up}
}
return

BuyAll:
SendInput, {Blind}{Down Down}{m Down}
Send, {Blind}{m Up}{Enter Down}{LButton Down}{Down Up}{Down}
DllCall("SetCursorPos", int, 435, int, 315)
Send, {Blind}{LButton Up}{Enter Up}{Enter 2}{Enter Down}
SendInput, {Blind}{WheelDown}
Send, {Blind}{Enter Up}{m}
Sleep, 150
return

BST:
SendInput, {Blind}{Enter Down}{m Down}
Send, {Blind}{m Up}{Enter Up}{Enter Down}{Down 3}{Down Down}
SendInput, {Blind}{Enter Up}
Send, {Blind}{Down Up}{Enter Down}{WheelDown}{Enter Up}
Sleep, 150
return

Armor:
SendInput, {Blind}{Enter Down}{m Down}
Send, {Blind}{m Up}{Enter Up}{Enter Down}{Up 2}{Up Down}
SendInput, {Blind}{Enter Up} 
Send, {Blind}{Up Up}{Enter Down}{Down 2}{WheelDown}{Enter Up}
Sleep, 150
return

FastSpawnC4:
Send, {Blind}{\ Down}
Sleep, 310
Send, {Blind}{G}{\ Up}
Sleep, 200
Send, {Esc}{P}
return

FastSpawnStinger:
Send, {Blind}{\ Down}{LButton Down}
Sleep, 310 ; 310 if SetMouseDelay, 1
Send, {Blind}{LButton Up}{\ Up}
Sleep, 80
Send, {Esc}{P}
return

Thermal:
SendInput, {Blind}{Down Down}{m Down}
Send, {Blind}{m Up}{Enter Down}{LButton Down}{Down Up}
DllCall("SetCursorPos", int, 435, int, 350)
Send, {Blind}{LButton Up}{Enter Up}{Enter Down}{Down}
SendInput, {Blind}{Enter Up}
Send, {Blind}{MButton}{m}
Sleep, 250
return

Respawn:
Send, {LButton 55}
return

Jobs:
SendInput, {Blind}{WheelUp Down}{Enter Down}{m Down}
Send, {Blind}{m Up}{Up 2}{WheelUp Up}
SendInput, {Blind}{Enter Up}
Send, {Blind}{Enter Down}{Up}
SendInput, {Blind}{Enter Up}
Send, {Blind}{Down}{WheelDown}{Enter Down}{Enter Up}{Right}{m}
Sleep, 150
return

BugThermal:
SendInput, {LButton Up}{Enter Down}{m Down}
Send, {Blind}{m Up}{Enter Up}{Enter Down}{Down Down}{Enter Up}{Down Up}
SendInput, {Enter Down}
Send, {Blind}{Down Down}{Enter Up}{Down Up}{Right}{Left Down}{m}
SendInput, {Blind}{Left Up}
Sleep, 150
return

AntiAfk:
Pause
Loop
{
Send, {A Down}
Sleep, 250
Send, {A Up}
Sleep, 30
Send, {D Down}
Sleep, 250
Send, {D Up}
Sleep, 30
}
return

Ceo:
SendInput, {LButton Up}{Enter Down}{WheelDown Down}{m Down}
Send, {Blind}{m Up}{Enter Up}{WheelDown Up}{Enter 2}
Sleep, 150
return

Mc:
SendInput, {LButton Up}{Enter Down}{WheelDown Down}{m Down}
Send, {Blind}{m Up}{Enter Up}{WheelDown Up}{Enter Down}{WheelUp Down}{Enter Up}{WheelUp Up}{Enter 2}
Sleep, 150
return

QuitCeo:
SendInput, {LButton Up}{Enter Down}{m Down}
Send, {Blind}{m Up}{Enter Up}{Up Down}
SendInput, {Enter Down}
Send, {Blind}{Up Up}{Enter Up}
Sleep, 150
return

CeoGhost:
SendInput, {LButton Up}{Enter Down}{m Down}
Send, {Blind}{m Up}{Enter Up}
Loop 2
{
Send, {Enter Down}{Up 2}{WheelUp}{Enter Up}
}
return

Bribe:
SendInput, {Blind}{Enter Down}{m Down}
Send, {Blind}{m Up}{Enter Up}{Enter Down}{Up 2}{Up Down}{Enter Up}
SendInput, {Blind}{Up Up}
Send, {Blind}{Enter Down}{Up 2}{Enter Up}
return

RcBandito:
SendInput, {Blind}{Enter Down}{m Down}{WheelDown Down}
Send, {Blind}{Down Down}{m Up}{Down Up}{WheelDown Up}
SendInput, {Blind}{Enter Up}
Send, {Blind}{Enter Down}{Up 2}{WheelUp}{Enter Up}{Enter Down}{Down Down}{Enter Up}
SendInput, {Blind}{Down Up}
return

JetBreak:
While GetKeyState("Shift", "P")
    {
        Send, {Blind}{Shift Down}
        Sleep, 900
        Send, {Blind}{Shift Up}
    }
return

Tp:
Send, {Enter}{Alt Down}{F4}{Alt Up}
Sleep, 39000
Send, {Esc}
return

; Reconnect
>+Insert:: ; RightShift+Insert
if (toggle := !toggle) {	
Process_Suspend("Gta5.exe")
Process_Suspend(PID_or_Name){
    PID := (InStr(PID_or_Name,".")) ? ProcExist(PID_or_Name) : PID_or_Name
    h:=DllCall("OpenProcess", "uInt", 0x1F0FFF, "Int", 0, "Int", pid)
    If !h   
        Return -1
    DllCall("ntdll.dll\NtSuspendProcess", "Int", h)
    DllCall("CloseHandle", "Int", h)
}
Sleep 9000 ; 8000 Main
Process_Resume("Gta5.exe")
Process_Resume(PID_or_Name){
    PID := (InStr(PID_or_Name,".")) ? ProcExist(PID_or_Name) : PID_or_Name
    h:=DllCall("OpenProcess", "uInt", 0x1F0FFF, "Int", 0, "Int", pid)
    If !h   
        Return -1
    DllCall("ntdll.dll\NtResumeProcess", "Int", h)
    DllCall("CloseHandle", "Int", h)
}
ProcExist(PID_or_Name=""){
    Process, Exist, % (PID_or_Name="") ? DllCall("GetCurrentProcessID") : PID_or_Name
    Return Errorlevel
}
}
Run, kekmenu.ahk, D:\all\Gta helper\Macro ; Reload Script
return

Strafe:
Loop
{
SendInput, {Blind}{a Down}
Sleep, 30
Send, {Blind}{d Down}
SendInput, {Blind}{a Up}
Sleep, 30
Send, {Blind}{d Up}
if !GetKeyState("q", "P") ; 1 - "Клавиша", 2 - "T" - Клавиша будет зажатой, The key will be clamped / P
Break
}
return

SnacksHax:
{
Run, SnacksHax.ahk
}
return

SnowOff:
{
Run, Snow Off.ahk
}
return

SnowOn:
{
Run, Snow On.ahk
}
return

Snacks:
SendInput, {Blind}{Down Down}{m Down}
Send, {Blind}{m Up}{Enter Down}{LButton Down}{Down Up}
DllCall("SetCursorPos", int, 435, int, 315)
SendInput, {Blind}{LButton Up}{Enter Up}
Send, {Blind}{Enter Down}{Down 2}{Enter Up}{Down}{Enter 5}{m}
Sleep, 125
return

; Lags
Hotkey, *~$Ins, Toggle
*Ins::
Loop
{
GetKeyState, state, Ins, P
if state = U
break
Send, {Blind}{Shift Down}{Alt Down}{Shift Up}{Alt Up}
}
return

; Tab Macro
1:
Send, {Blind}{1 Down}{Tab}{1 Up}
return

2:
Send, {Blind}{2 Down}{Tab}{2 Up}
return

3:
Send, {Blind}{3 Down}{Tab}{3 Up}
return

4:
Send, {Blind}{4 Down}{Tab}{4 Up}
return

5:
Send, {Blind}{5 Down}{Tab}{5 Up}
return

x:
Send, {Blind}{x Down}{Tab}{x Up}
return

LoadoutOn:
SendInput, {Blind}{Down Down}{m Down}
Send, {Blind}{m Up}{LButton Down}{Down Up}
DllCall("SetCursorPos", int, 435, int, 315)
SendInput, {Blind}{LButton Up}
Send, {Blind}{Enter}{Up}{Enter 2}{m}
Sleep, 150
return

LoadoutOff:
SendInput, {Blind}{Down Down}{m Down}
Send, {Blind}{m Up}{LButton Down}{Down Up}
DllCall("SetCursorPos", int, 435, int, 315)
SendInput, {Blind}{LButton Up}
Send, {Blind}{Enter}{Enter Down}{Up}{Enter Up}{m}
Sleep, 150
return

SpamClipboard:
Send, {Blind}{t}{Enter Down}
Sleep, 1
Send, {Raw}%Clipboard%
Send, {Blind}{Enter Up}
return

Zmeyka:
toggle := !toggle
if toggle = 1
settimer, function1, 10
else
settimer, function1, off
return
function1:
Send, {Blind}{t}
Sleep, 25
SendInput, {Raw}‡%Clipboard%‡‡‡‡‡‡‡‡
Send, {Blind}{Enter}{t}
Sleep, 25
SendInput, {Raw}‡‡%Clipboard%‡‡‡‡‡‡‡
Send, {Blind}{Enter}{t}
Sleep, 25
SendInput, {Raw}‡‡‡%Clipboard%‡‡‡‡‡‡
Send, {Blind}{Enter}{t}
Sleep, 25
SendInput, {Raw}‡‡‡‡%Clipboard%‡‡‡‡‡
Send, {Blind}{Enter}{t}
Sleep, 25
SendInput, {Raw}‡‡‡‡‡%Clipboard%‡‡‡‡
Send, {Blind}{Enter}{t}
Sleep, 25
SendInput, {Raw}‡‡‡‡‡‡%Clipboard%‡‡‡
Send, {Blind}{Enter}{t}
Sleep, 25
SendInput, {Raw}‡‡‡‡‡‡‡%Clipboard%‡‡
Send, {Blind}{Enter}{t}
Sleep, 25
SendInput, {Raw}‡‡‡‡‡‡‡‡%Clipboard%‡
Send, {Blind}{Enter}{t}

Sleep, 25
SendInput, {Raw}‡‡‡‡‡‡‡‡%Clipboard%‡
Send, {Blind}{Enter}{t}
Sleep, 25
SendInput, {Raw}‡‡‡‡‡‡‡%Clipboard%‡‡
Send, {Blind}{Enter}{t}
Sleep, 25
SendInput, {Raw}‡‡‡‡‡‡%Clipboard%‡‡‡
Send, {Blind}{Enter}{t}
Sleep, 25
SendInput, {Raw}‡‡‡‡‡%Clipboard%‡‡‡‡
Send, {Blind}{Enter}{t}
Sleep, 25
SendInput, {Raw}‡‡‡‡%Clipboard%‡‡‡‡‡
Send, {Blind}{Enter}{t}
Sleep, 25
SendInput, {Raw}‡‡‡%Clipboard%‡‡‡‡‡‡
Send, {Blind}{Enter}{t}
Sleep, 25
SendInput, {Raw}‡‡%Clipboard%‡‡‡‡‡‡‡
Send, {Blind}{Enter}{t}
Sleep, 25
SendInput, {Raw}‡%Clipboard%‡‡‡‡‡‡‡‡
Send, {Blind}{Enter}
return ; RShift Stop Script

Zmeyka2:
toggle := !toggle
if toggle = 1
settimer, function2, 10
else
settimer, function2, off
return
function2:
Send, {Blind}{t}
Sleep, 25
SendInput, ‡‡‡‡‡‡‡‡‡‡
Send, {Blind}{Enter}{t}
Sleep, 25
SendInput, ‡‡‡‡‡‡‡‡‡‡‡
Send, {Blind}{Enter}{t}
Sleep, 25
SendInput, ‡‡‡‡‡‡‡‡‡‡‡‡
Send, {Blind}{Enter}{t}
Sleep, 25
SendInput, ‡‡‡‡‡‡‡‡‡‡‡‡‡
Send, {Blind}{Enter}{t}
Sleep, 25
SendInput, ‡‡‡‡‡‡‡‡‡‡‡‡‡‡
Send, {Blind}{Enter}{t}
Sleep, 25
SendInput, ‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡
Send, {Blind}{Enter}{t}
Sleep, 25
SendInput, ‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡
Send, {Blind}{Enter}{t}
Sleep, 25
SendInput, ‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡
Send, {Blind}{Enter}{t}

Sleep, 25
SendInput, ‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡
Send, {Blind}{Enter}{t}
Sleep, 25
SendInput, ‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡
Send, {Blind}{Enter}{t}
Sleep, 25
SendInput, ‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡
Send, {Blind}{Enter}{t}
Sleep, 25
SendInput, ‡‡‡‡‡‡‡‡‡‡‡‡‡‡
Send, {Blind}{Enter}{t}
Sleep, 25
SendInput, ‡‡‡‡‡‡‡‡‡‡‡‡‡
Send, {Blind}{Enter}{t}
Sleep, 25
SendInput, ‡‡‡‡‡‡‡‡‡‡‡‡
Send, {Blind}{Enter}{t}
Sleep, 25
SendInput, ‡‡‡‡‡‡‡‡‡‡‡
Send, {Blind}{Enter}{t}
Sleep, 25
SendInput, ‡‡‡‡‡‡‡‡‡‡
Send, {Blind}{Enter}
return ; RShift Stop Script

Zmeyka3:
toggle := !toggle
if toggle = 1
settimer, function3, 10
else
settimer, function3, off
return
function3:
Send, {Blind}{t}
Loop 3
{
Sleep, 25
SendInput, %Clipboard% ‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡
}
Sleep, 25
SendInput, %Clipboard%
Send, {Blind}{Enter}
return ; RShift Stop Script

Zmeyka4:
toggle := !toggle
if toggle = 1
settimer, function4, 10
else
settimer, function4, off
return
function4:
Send, {Blind}{t}
Sleep, 25
SendInput, ‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡ ‡
Loop 3
{
Sleep, 25
SendInput, ‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡ ‡
}
Sleep, 25
SendInput, ‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡
Send, {Blind}{Enter}
return ; RShift Stop Script