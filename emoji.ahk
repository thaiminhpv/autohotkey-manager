﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Pause::
Input Key, L1
switch Key {
    case 1:
        Send, 🙂
    return
    case 2:
        Send, 🥺
    return
    case 3:
        Send, 🙃
    return
    case 4:
        Send, 🤤
    return
    case 5:
        Send, 😨
    return
}
Return