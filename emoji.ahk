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
    case "i":
        Send, 🙃
    return
    case "s":
        Send, 😨
    return
    case "o":
        Send, 😘
    return
    case "g":
        Send, 😎
    return
    case "b":
        Send, 😁
    return
    case "m":
        Send, 🤤
    return
    case "d":
        Send, 😃
    return
    case "c":
        Send, 👏
    return
    case "w":
        Send, 🥴
    return
    case "p":
        Send, 😛
    return
    case "x":
        Send, 🙏
    return
    case "k":
        Send, 😏
    return
    case ";":
        Send, 😉
    return
    case "h":
        Send, ❤️
    return
    case "/":
        Send, 😕
    return
    case ",":
        Send, ←
    return
    case ".":
        Send, →
    return
    case "f":
        Send, #;
        Sleep, 20
        Send, palm
        Send, {Right 3}{Enter}
        ; 🤦‍♂️
    return
    case "r":
        Send, #;
        Sleep, 20
        Send, raise
        Send, {Right 3}{Enter}
        ;🙋‍♂️
    return
    case "e":
        Send, #;
        Sleep, 20
        Send, tip
        Send, {Right 1}{Enter}
        ;💁‍♂️
    return
}
return
