#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

^!+u::
question := 1
answer := 1
originXshortcut := 840
; 1 = A
; 2 = B
; 3 = C
; 4 = D
Loop, 80 {
    WinActivate, SHub Classroom
    ; Refresh page
    Click, originXshortcut, 93
    Sleep, 3000
    ; Bắt đầu làm lại bài
    Click, (originXshortcut + 30), 93
    Sleep, 2500
    ; Chọn làm câu số 'question'
    Click, 950, 63 ; Click vào thanh url
    Send ^a
    Send javascript:document.getElementsByClassName("d-flex justify-content-center align-items-center")[%question%].click();
    Send {Enter}
    Sleep 300
    ; Focus vào input trả lời
    Click, (originXshortcut + 60), 93
    ; Điền đáp án A | B | C | D
    Sleep 100
    Send ^a
    outputAnswerToText(answer)
    Sleep 100
    ; Bấm nút nộp bài
    Click, (originXshortcut + 90), 93
    Sleep 100
    ; Bấm confirm nộp bài
    Click, (originXshortcut + 130), 93
    Sleep 1500
; ^!+i::
    ; Bôi đen kết quả + Copy vào clipboard
    Click, (%originXshortcut% + 160), 93
    Sleep 100
    if (clipboard == 1) {
        ; When get the right answer
        WinActivate Physics
        Sleep 1200
        outputAnswerToText(answer)
        Send {Enter}
        Sleep 1000
        question++
        answer := 0
    } Else if (answer == 3 and clipboard == 0) {
        ; increase performance by 20%
        ; đã thử cả A, B, C -> đáp án là D
        WinActivate Physics
        answer := 4
        Sleep 1200
        outputAnswerToText(answer)
        Send {Enter}
        Sleep 1000
        question++
        answer := 0
    }
    answer++
    clipboard := 0
    if (question == 21) {
        Break
    }
}
Return

#\::
if(clipboard == 1) {
    MsgBox, Yes
    clipboard := 0
} Else {
    MsgBox, No
}
Return

#/::
Reload
Return

outputAnswerToText(answer) {
    if (answer == 1) {
        Send A
    } Else if (answer == 2) {
        Send B
    } Else if (answer == 3) {
        Send C
    } Else if (answer == 4) {
        Send D
    } Else {
        Throw, unexpected answer
    }
}