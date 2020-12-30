#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

StringCaseSense, Off

#*::
Send, {CtrlDown}c{CtrlUp}
Sleep, 200
name := clipboard
Sleep, 10
if (SubStr(name, 1, StrLen(name) - 2) == "same") {
    MsgBox, lmao!
} Else {
    MsgBox, fail
}
Return

#/::
MsgBox, Stopped Manually
Reload
Return

^+!u::
Loop, 39 {
    WinActivate, ahk_exe EXCEL.EXE
    Sleep, 100
    Send, {Down}
    Sleep, 200
    Send, {CtrlDown}c{CtrlUp}
    Sleep, 400
    name := clipboard
    Sleep, 100
    Send, {Right}
    Sleep, 200
    Send, {CtrlDown}c{CtrlUp}
    Sleep, 400
    full := clipboard
    Sleep, 100
    Send, {Left}
    Sleep, 200
    WinActivate, ahk_exe msedge.exe
    Sleep, 100
    Click, 1042, 474
    Sleep, 50
    Click, 1042, 474
    Sleep, 600
    Send, {CtrlDown}a{CtrlUp}
    Sleep, 400
    Send, %name%{BackSpace 2}
    Sleep, 1200
    if (SubStr(full, 1, StrLen(full) - 2) != "same") {
        Click, 1016, 710
        Sleep, 50
        Click, 1016, 710
        Sleep, 700
        Send, {CtrlDown}a{CtrlUp}
        Sleep, 1000
        Send, %full%{BackSpace 3}{Up}{Home}{Delete}
        Sleep, 3300
    }
    Click, 1485, 139 ; click edit file name
    Sleep, 3000Nguyen Ngoc Huyen

    Send, {CtrlDown}a{CtrlUp}
    Sleep, 300
    Send, %name%
    Sleep, 300
    Click, 1806, 140 ; open download panel
    Sleep, 2400
    Click, 1743, 479 ; download
    Sleep, 14000
    Click, 1524, 292 ; exit ads
    Sleep, 300
}
Return