#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

typedelay(message) {
    x := 1
    typing := ""
    counter := StrLen(message)
    Loop, %counter% {
        ; StringLeft, typing, message, x
        typing := SubStr(message, x,1)
        Send %typing%
        x := x + 1
        ; Sleep 20
    }
}

^!+u::
; ifwinexist Uplay
; {
;      WinActivate, Uplay
;     Send {Click, 330, 125}
Sleep 4000
    typedelay(clipboard)
    Loop, 10 {
        Send {BackSpace}
        ; Sleep, 100
    }
    ; Sleep, 200
    Send {Tab}
    typedelay(clipboard)
    ; Sleep, 200
    Send {Tab}
    typedelay("aA1234567")
    ; Sleep, 200
    Send {Tab}
    Send {Down}
    ; Sleep, 200
    Send {Tab}
    Send {Down}
    Send {Tab}
    ; Sleep, 200
    Loop, 3 {
        Send {Down}
    ; Sleep, 200
    }
    Send {Tab}{Space}
    ; Sleep, 200
return

