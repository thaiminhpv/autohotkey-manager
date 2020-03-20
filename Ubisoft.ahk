#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
CoordMode Relative

typedelay(message) {
    x := 1
    typing := ""
    counter := StrLen(message)
    Loop, %counter% {
        typing := SubStr(message, x,1)
        Send %typing%
        x := x + 1

    }
}

typedelayUsername(message) {
    x := 1
    typing := ""
    counter := StrLen(message)
    Loop, %counter% {
        typing := SubStr(message, x,1)
        if (typing == "@") {
            Break
        }
        Send %typing%
        x := x + 1

    }
}


;;;;;;;;;;;;;;Uplay;;;;;;;;;;;;;;;;;;;;;
^!+u::
; ifwinexist Uplay
; {
    WinActivate, Uplay
    Click, 120, 400
    Sleep, 100
    Click, 330, 125
    typedelayUsername(clipboard)
    Send {Tab}
    typedelay(clipboard)
    Send {Tab}
    typedelay("aA1234567")
    Send {Tab}
    Send {Down}
    Send {Tab}
    Send {Down}
    Send {Tab}
    Loop, 3 {
        Send {Down}
    }
    ; Sleep 3000
    ; Send {Click, 229, 343}
    Sleep 100
    Send {Click, 637, 402}

    ; US - UK only ? Communication
    Sleep 500
    Click, 116, 199
    Click, 116, 249
    Sleep 100
    Send {Click, 637, 402}

    ;Created Account Successfully
    ; Skip 2-step verification
    Sleep, 12000
;;;;;fall though;;;;;;
^!+i::
    WinActivate, Uplay
    Click, 42, 402
    ; Click on Games tab
    Sleep, 7000
^!+o::
    WinActivate, Uplay
    Click, 210, 65
    ; Minimize My Games
    Sleep, 100
    Click, 55, 273
    ; Verify Email
    ; Sleep, 500
    ; Click, 850, 145
    ; Click on AC thumbnail game
    Sleep, 500
    Click, 140, 452
    ; Click on button "add to my Games"
    Sleep, 500
    Click, 165, 435

    ; Handle Pop up window
    WinWait, Product Activation
        WinActivate, Product Activation
        Click, 660, 402
    ; Account dropdown menu
    Sleep, 5000
    WinActivate, Uplay
    Sleep 2000
    Click, 818, 77
    ; Log out
    Sleep 1000
    MouseMove, 890, 221
    Sleep 1000
    Send {WheelDown 12}

; } Else {
; MsgBox, No
; }
return




;;;;;;;;;getnada;;;;;;;;;;
#z::
WinActivate, Nada
Click, 1183, 628
return


;;;;;get next email;;;;
^!+b::
WinActivate, Ubisoft fake
Sleep 300
Send {Down}
Send ^c
return

#/::
;Restart
CoordMode Screen
MouseMove, 1560, 1079
Sleep 1000
Click, Right
CoordMode Relative
Sleep 1000
Click, 1807, 947
return