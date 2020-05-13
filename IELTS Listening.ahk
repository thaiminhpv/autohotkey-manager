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

\::
ExecScript(7)
return

[::
ExecScript(5)
return

]::
ExecScript(6)
return

#/::
Reload
return