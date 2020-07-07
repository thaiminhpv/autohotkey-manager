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
Sleep, 400
Send, {Down}{Down}{Enter}
Sleep, 2000
F3::
ExecScript(0) ; open Image in new Tab
Sleep, 300
Send, ^+{Tab}
Sleep, 50
+`::
ExecScript(1) ; append Cambridge Dictionary then search
Sleep, 1400
ExecScript(2)
Sleep, 3000
Send, q
Sleep, 3000
Send, w
return

^`::
Click, 578, 55
Send, ^a
Send, ^c
Send, {Esc}
Sleep, 100
ExecScript(8)
Sleep, 1000
Send, %clipboard%
return

#/::
Reload
return