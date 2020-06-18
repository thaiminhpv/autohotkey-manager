#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

CoordMode Relative

typedelay(message) {
    x := 1
    typing := ""
    counter := StrLen(message)
    Loop, %counter% {
        typing := SubStr(message, x,1)
        Send %typing%
        x := x + 1
    }
}

+!^u::
Loop, 60 {
    ; get next account
    WinActivate, ahk_exe msedge.exe
    Sleep, 100
    Send {Down}
    Sleep, 100
    Send, {CtrlDown}c{CtrlUp}
    Sleep, 200
    ; log in
    WinActivate, ahk_exe upc.exe
    Sleep, 200
    Click, 360, 154
    Sleep, 100
    typedelay(clipboard)
    Sleep, 100
    Click, 308, 222
    Sleep, 100
    typedelay("aA1234567")
    Sleep, 1000
    Click, 622, 402
    Sleep, 8000
    ;agree term service------------
    Click, 45, 310
    Sleep, 100
    Click, 618, 409 ;continue button
    ;--------
    Sleep, 2000
    Click, 46, 402 ;skip 2 step
    Sleep, 15000
+!^l::
    WinWait, ahk_exe upc.exe ; focus back
    WinActivate, ahk_exe upc.exe ; focus back
    Sleep, 100
    Send, {Click, 286, 372}
    Sleep, 100
    Send, {Click, 286, 372}
    WinWait, ahk_class upc_activate_view
    WinActivate, ahk_class upc_activate_view ; focus on pop up window
    Sleep, 1000
    Click, 663, 403 ; click ok button
    Sleep, 1000
    WinWaitClose, ahk_class upc_activate_view
    WinActivate, ahk_class uplay_main ; focus back to main
^+!t::  
    ; Log out
    Sleep 300
    MouseMove, 818, 77
    Sleep 400
    Click
    Sleep 200
    MouseMove, 890, 221
    Sleep 200
    Send {WheelDown 12}
    Sleep 200
    Click, 711, 596
    Sleep, 8000
    WinWait, ahk_exe upc.exe

    Sleep, 60000 ;interval
}
Return

#/::
Reload
Return