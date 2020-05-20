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
    WinActivate, ahk_exe msedge.exe
    Send {Down}
    Sleep, 1000
    Send, {CtrlDown}c{CtrlUp}
    Sleep, 1000
    WinWait, ahk_exe upc.exe
    Sleep, 3000
    WinActivate, ahk_exe upc.exe
    Sleep, 1000
    Click, 360, 154
    Sleep, 1000
    typedelay(clipboard)
    Sleep, 1000
    Click, 308, 222
    Sleep, 1000
    typedelay("aA1234567")
    Sleep, 1000
    Click, 622, 402
    Sleep, 12000
    ;logging in
    Click, 45, 310
    ;agree term service
    Sleep, 1000
    Click, 618, 409 ;continue button
    Sleep, 5000
    Click, 46, 402 ;skip 2 step
    Sleep, 12000
^+!t::
    WinActivate, ahk_exe upc.exe ; focus back
    Click, 206, 66 ; click on games tab
    Sleep, 1000
    Click, 156, 579 ; click on game discovery 1
    Sleep, 1000
    Click, 152, 414 ; click on add to my games
    Sleep, 3000
    WinActivate, ahk_class upc_activate_view ; focus on pop up window
    Sleep, 1000
    Click, 663, 403 ; click ok button
    Sleep, 1000
    WinActivate, ahk_class uplay_main ; focus back to main
    Sleep, 1000
    Click, 107, 171 ; back to games button
    Sleep, 1000
    Click, 626, 403 ; ready to scroll
    Sleep, 1000
    Send, {WheelDown 1} ; scroll down
    Sleep, 1000
    Click, 371, 576 ; click on game discovery 2
    Sleep, 1000
    Click, 182, 444 ; click on add to my games
    Sleep, 3000
    WinActivate, ahk_class upc_activate_view ; focus on pop up window
    Sleep, 1000
    Click, 663, 403 ; click ok button
    Sleep, 1000
    WinActivate, ahk_class uplay_main ; focus back to main
    Sleep 100
    MouseMove, 818, 77
    Sleep 400
    Click
    ; Log out
    Sleep 200
    MouseMove, 890, 221
    Sleep 200
    Send {WheelDown 12}
    Sleep 200
    Click, 711, 596
Return

#/::
Reload
Return