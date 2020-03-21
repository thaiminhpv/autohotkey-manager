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
        Sleep 100
    }
}


;;;;;;;;;;;;;;Uplay;;;;;;;;;;;;;;;;;;;;;
^!+u::
; ifwinexist Uplay
; {
    email := clipboard
    WinActivate, Uplay
    Click, 120, 400
    Sleep, 100
    Click, 330, 125
    typedelayUsername(email)
    Send ^a
    Sleep 100
    Send ^c
    Sleep 100
    Send {Right}
    Send {Tab}
    typedelay(email)
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
    ; Send {Click, 229, 343} ;;the check box
    Sleep 100
    Send {Click, 637, 402}

    ; US - UK only ? Communication
    Sleep 500
    Click, 116, 199
    Click, 116, 249
    Sleep 100
    Send {Click, 637, 402}

;;;;; handle existed username;;;;
    Loop {
        Sleep 3000
        WinActivate, Uplay
        Click, 436, 125
        PixelGetColor, errcolor, 194, 119

        if (errcolor == 0x4466FF) {
            Sleep 2000
            Send h
            Sleep 200
            Click, 330, 125
            Send ^a
            Sleep 100
            Send ^c
            Sleep 100
            ; Continue
            Sleep 100
            Send {Click, 637, 402}

            ; US - UK only ? Communication
            Sleep 500
            ; Click, 116, 199
            ; Click, 116, 249
            Send {Click, 637, 402}
        } Else {
            Break
        }
    }
    ;Created Account Successfully
    ; Skip 2-step verification
    Sleep, 4500
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
    Sleep, 7000
^!+p::
    WinActivate, Uplay
    Sleep 100
    MouseMove, 818, 77
    Sleep 400
    Click
    ; Log out
    Sleep 200
    MouseMove, 890, 221
    Sleep 200
    Send {WheelDown 12}
    Sleep 200
    Click, 711, 596

    Sleep 1000
    Send ^!+b
; } Else {
; MsgBox, No
; }
return


^!+y::
    ; Copy typed manual username
    Click, 330, 125
    Send ^a
    Sleep 100
    Send ^c
    Sleep 100
    ; Continue
    Sleep 100
    Send {Click, 637, 402}

    ; US - UK only ? Communication
    Sleep 500
    ; Click, 116, 199
    ; Click, 116, 249
    Send {Click, 637, 402}

    ;Created Account Successfully
    ; Skip 2-step verification
    Sleep, 7500
;;;;;fall though;;;;;;
    WinActivate, Uplay
    Click, 42, 402
    ; Click on Games tab
    Sleep, 7000
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
    Sleep, 7000
    WinActivate, Uplay
    Sleep 100
    MouseMove, 818, 77
    Sleep 400
    Click
    ; Log out
    Sleep 200
    MouseMove, 890, 221
    Sleep 200
    Send {WheelDown 12}
    Sleep 200
    Click, 711, 596

    Sleep 1000
    Send ^!+b
; } Else {
; MsgBox, No
; }
return


;;;;;;;;;getnada;;;;;;;;;;
#z::
y := 613
Loop, 20 {
    WinActivate, Nada
    Click, 77, %y%
    Sleep 300
    Click, 1183, 628 ; ok pop up
    Sleep 300
    Click, 1341, 59 ; get email name
    Send javascript:document.getElementsByClassName("icon-copy")[0].click();
    Send {Enter}
    ; MouseMove, 936, 269 ; scroll up
    ; Send {WheelUp 12}
    ; Sleep 500
    ; Click, 747, 237 ; ok copy
    Sleep 200
    WinActivate, Ubisoft fake
    Sleep 100
    Send %clipboard%
    Send {Down}
    Sleep 100
    y := y + 35
}
; Click, 1183, 628
return
#[::
WinActivate, Nada
Click, 594, 334
Sleep 3000
Click, 850, 706
Sleep 8000
Click 1168, 570
Sleep 300
Send ^w
return
#]::
WinActivate, Nada
y := 405
Loop, 8 {
    Sleep 500
    Click, 77, %y%
    Sleep 500
    Click, 594, 334
    Sleep 3000
    Click, 850, 706
    Sleep 8000
    Click 1168, 570
    Sleep 300
    Send ^w
    y := y + 35
}

return
; 114 735 + 35

;;;;;get next email from sheet;;;;
^!+b::
WinActivate, Ubisoft fake
Sleep 300
Send {Left}
Send %clipboard%
; Send #v
; Sleep 600
; Send {Enter}
Sleep 200
Send {Right}
Send {Down}
Send ^c

;;reset
; Send {CtrlUp}{AltUp}{LWinUp}{ShiftUp}
Sleep 400
WinWait, Uplay
WinActivate, Uplay
; Send ^!+u
return

#/::
;;reset
; Send {CtrlUp}{AltUp}{LWinUp}{ShiftUp}
MsgBox, reseted
Reload
return


^!+m::
;;handle exception username existed

    Sleep 2000
    WinActivate, Uplay
    Click, 330, 125
    PixelGetColor, errcolor, 194, 119

if (errcolor == 0x4466FF) {
    MsgBox done
} Else {
    MsgBox done
}
return