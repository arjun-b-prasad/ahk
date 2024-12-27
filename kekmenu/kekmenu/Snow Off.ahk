SetKeyDelay, -1 ,-1

Run, GTAHax.exe, , Min, PID
WinWait, ahk_pid %PID%
ControlSend, Edit1, {Right}{Backspace}266558
;ControlSend, Edit2, {Right}{Backspace}4413
ControlSend, Edit8, {Backspace}0
ControlClick, Button1
Process, Close, %PID%
Process, Close, GTAHax.exe
ExitApp

; Global - 262145 + 4413 = 266558