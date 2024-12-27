SetTitleMatchMode, Slow

SetWorkingDir %A_ScriptDir%         ;
If not A_IsAdmin                    ; Запуск от имени администратора
Run, GTAHax.exe, , Min, PID
WinWait, ahk_pid %PID%
ControlSend, Edit9, $MPx_NO_BOUGHT_YUM_SNACKS
ControlSend, Edit10, 666
ControlClick, Button33
ControlSend, Edit9, {LCtrl Down}{z}{LCtrl Up}$MPx_NO_BOUGHT_HEALTH_SNACKS
ControlClick, Button33
Process, Close, %PID%
Process, Close, GTAHax.exe
ExitApp