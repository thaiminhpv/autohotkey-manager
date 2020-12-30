#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

F16::WheelDown
F15::WheelUp

; ^a::
; Sleep, 2000
; Send {F16}
; Return

; #/::
; Reload
; Return