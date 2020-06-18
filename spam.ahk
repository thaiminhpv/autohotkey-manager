#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

^\::
Loop {
Click, 1479, 1059
Sleep 300
}
return

+\::
Loop, 100 {
Send 🙂
Send {Enter}
Sleep 30
}
return

#/::
reload
return