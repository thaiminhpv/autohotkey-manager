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
    WinActivate, ahk_exe msedge.exe
    Sleep, 100
    Send {Down}
    Sleep, 100
    Send, {CtrlDown}c{CtrlUp}
    Sleep, 200
    WinWait, ahk_exe upc.exe
    Sleep, 8000
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

    color = null
    while (color != 0x8A4C0E) {
        Sleep, 1000
        WinActivate, ahk_exe upc.exe
        PixelGetColor, color, 663, 401
    }
    ;logging in
    Click, 45, 310
    ;agree term service
    Sleep, 100
    Click, 618, 409 ;continue button
    Sleep, 2000
    ; color = null
    ; while (color != 0xFFFFFF) {
    ;     Sleep, 1000
    ;     PixelGetColor, color, 143, 181
    ; }
    Click, 46, 402 ;skip 2 step
    Sleep, 12000
    ; wait until
    ; color = null
    ; while (color != 0xFFAA55) {
    ;     Sleep, 1000
    ;     PixelGetColor, color, 793, 74
    ; }
^+!t::  
    WinWait, ahk_exe upc.exe ; focus back
    WinActivate, ahk_exe upc.exe ; focus back
    Sleep, 100
    Click, 208, 70 ; click on games tab
    Sleep, 1000
    Click, 135, 609 ; click on game discovery 1
    Sleep, 1000
    Click, 469, 352 ; click on add to my games
    Sleep, 1700
    WinWait, ahk_class upc_activate_view
    WinActivate, ahk_class upc_activate_view ; focus on pop up window
    Sleep, 1000
    Click, 663, 403 ; click ok button
    Sleep, 1000
    WinWaitClose, ahk_class upc_activate_view
    WinActivate, ahk_class uplay_main ; focus back to main
    Sleep, 400
    Click, 713, 126
    Sleep, 300
    Click, 333, 143 ; back to games button
    Sleep, 1000
    Click, 343, 724 ; click on game discovery 2
    Sleep, 1000
    Click, 535, 367 ; click on add to my games
    Sleep, 1700
    WinWait, ahk_class upc_activate_view
    WinActivate, ahk_class upc_activate_view ; focus on pop up window
    Sleep, 1000
    Click, 663, 403 ; click ok button
    Sleep, 1000
    WinWaitClose, ahk_class upc_activate_view
    WinActivate, ahk_class uplay_main ; focus back to main
    ; Log out
    Sleep 300
    MouseMove, 1777, 68
    Sleep 400
    Click
    Sleep 200
    Click, 1743, 776
}
Return

#/::
Reload
Return