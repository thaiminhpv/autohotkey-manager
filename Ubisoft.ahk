#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

^!+u::
; ifwinexist Uplay
; {
;      WinActivate, Uplay
;     Send {Click, 330, 125}
    Send {CtrlDown}v{CtrlUp}
    Loop, 10 {
        Send {BackSpace}
    Sleep, 200
    }
    Sleep, 200
    Send {Tab}
    Send {CtrlDown}v{CtrlUp}
    Sleep, 200
    Send {Tab}
    ; Send aA1234567
    Sleep, 200
    Send {Tab}
    Send 1
    Sleep, 200
    Send {Tab}
    Send {Down}
    Send {Tab}
    Sleep, 200
    Loop, 3 {
        Send {Down}
    Sleep, 200
    }
    Send {Tab}{Space}
    Sleep, 200
; Else {
;     MsgBox, No
; }
return
