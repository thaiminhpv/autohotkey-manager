#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
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
        Send, 👉👈
    return
    case 4:
        Send, 🙃
    return
    case 5:
        Send, 🤤
    return
    case 6:
        Send, 😨
    return
    case 7:
        Send, 😘
    return
    case 8:
        Send, 😎
    return
    case 9:
        Send, 😜
    return
    case 0:
        Send, 😁
    return
    case "d":
        Send, 😃
    return
    case "c":
        Send, 👏
    return
    case "p":
        Send, 🙏
    return
    case "b":
        Send, #;
        Sleep, 20
        Send, palm
        Send, {Right 3}{Enter}
        ; 🤦‍♂️
    return
    case "n":
        Send, #;
        Sleep, 20
        Send, raise
        Send, {Right 3}{Enter}
        ;🙋‍♂️
    return
    case "m":
        Send, #;
        Sleep, 20
        Send, tip
        Send, {Right 1}{Enter}
        ;💁‍♂️
    return
}
return