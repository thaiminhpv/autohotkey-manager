#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#s::
SendRaw, Sleep, 1000
Return

#c::
Sleep, 500
MouseGetPos, x, y
WinActivate, ahk_exe Code.exe
SendRaw, Click, %x%, %y%
Return

#/::
Reload
Return