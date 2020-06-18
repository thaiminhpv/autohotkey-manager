#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#s:: ; Sleep 1000
SendRaw, Sleep, 1000
Return

#c:: ; Click
Sleep, 500
MouseGetPos, x, y
WinActivate, ahk_exe Code.exe
SendRaw, Click, %x%, %y%
Return

#q:: ; Wait Until selected color exist
Sleep, 500
MouseGetPos, x, y
PixelGetColor, color, x, y
WinActivate, ahk_exe Code.exe
SendRaw, color = null
Send, {Enter}
SendRaw, while (color != %color%) {
Send, {Enter}
SendRaw,    Sleep, 1000
Send, {Enter}
SendRaw,    PixelGetColor, color, %x%, %y%
Send, {Enter}
SendRaw, }
Return