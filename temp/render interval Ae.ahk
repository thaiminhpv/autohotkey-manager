#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#\::
Loop {
    WinActivate, ahk_exe AfterFX.exe
    Click, 1857, 517
    Sleep, 15000
    WinActivate, ahk_exe AfterFX.exe
    Click, 1857, 517
    Sleep, 60000
}
Return

#,::
Loop {
    WinActivate, ahk_exe AfterFX.exe
    Sleep, 40
    Click, 1857, 517
    Sleep, 40
    WinActivate, ahk_exe chrome.exe
    Sleep, 15000
    WinActivate, ahk_exe AfterFX.exe
    Sleep, 40
    Click, 1857, 517
    Sleep, 40
    WinActivate, ahk_exe chrome.exe
    Sleep, 60000
}
Return

#/::
MsgBox, stop
reload
return