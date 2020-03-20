#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Run, D:\MyFile\Downloads\Documents\barron writing
WinWait, barron writing
{
    WinActivate, barron writing
    Send ^a{Enter}
    Sleep, 4000
    WinActivate Barron’s Writing For The IELTS - Copy.pdf - Adobe Acrobat Reader DC
    WinActivate Barron’s Writing For The IELTS - Copy - Copy.pdf - Adobe Acrobat Reader DC
    WinActivate Barron’s Writing For The IELTS.pdf - Adobe Acrobat Reader DC
    Sleep, 100
    Send #{Up}
    Sleep, 200
    Click, 260, 60
    Sleep, 2000
    Loop, 3
    {
        Click 1683, 610
        Send ^h
        Send ^{Tab}
        Sleep, 1000
    }
    Click, 260, 60, Down
    Click, 260, 190, Up
}
