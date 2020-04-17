#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

OriginX := 762
OriginY := 92
distance := 32

ExecScript(i) {
    global OriginX, OriginY, distance
    x := OriginX + distance * i
    Send, {Click, %x%, %OriginY%}
}

`::
Click
Click
Click Right
Sleep, 100
Send, {Down}
Send, {Down}
Send, {Enter}
Sleep, 2000
!`::
ExecScript(0)
Sleep, 200
Send, ^+{Tab}
Sleep, 50
^`::
ExecScript(1)
Sleep, 1000
ExecScript(2)
Sleep, 3000
+`::
ExecScript(3)
return

#/::
Reload
return

F4::
Click, 578, 55
return