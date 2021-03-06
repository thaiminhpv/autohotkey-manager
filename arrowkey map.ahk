﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

$^j::
if (GetKeyState("Capslock", "T") = 0)
    Send, {Down}
Else
    Send, ^j
Return

; $^k::
; if (GetKeyState("Capslock", "T") = 0)
;     Send, {Up}
; Else
;     Send, ^k
; Return

; $^l::
; if (GetKeyState("Capslock", "T") = 0)
;     Send, {Right}
; Else
;     Send, ^l
; Return

; $^h::
; if (GetKeyState("Capslock", "T") = 0)
;     Send, {Left} 
;  Else
;     Send, ^h
; Return

; $^\::
; if (GetKeyState("Capslock", "T") = 0)
;     Send, ^l
;  Else
;     Send, ^\
; Return

; click middle of the screen
PrintScreen::
WinGetPos, X, Y, Width, Height, A
MouseMove, (Width / 2), (Height / 2)
Click
return