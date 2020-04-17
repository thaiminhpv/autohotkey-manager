#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

`::
Click
Click
Click Right
Sleep, 200
Send, {Down}
Send, {Down}
Send, {Enter}
Sleep, 1000
Click, 578, 55
Send, javascript:var a = [...document.querySelectorAll('.hdtb-mitem.hdtb-imb')].filter((e) => e.innerText == "Hình ảnh")[0].children[0];a.setAttribute('target','_blank');a.click();
Send, {Enter}
Sleep, 100
return

!`::
WinActivate, Chrome
Click, 578, 55
Send, javascript:var a = [...document.querySelectorAll('.hdtb-mitem.hdtb-imb')].filter((e) => e.innerText == "Hình ảnh")[0].children[0];a.setAttribute('target','_blank');a.click();
Send, {Enter}
Sleep, 1000
Send, ^+{Tab}
^`::
Click, 542, 110
Send, {Space} Cambridge Dictionary {Enter}
Sleep, 800
Click, 578, 55
Send, javascript:document.querySelectorAll('.bNg8Rb')[3].parentElement.querySelector('a').click();
Send, {Enter}
Sleep, 2000
+`::
Click, 578, 55
Send, javascript:document.querySelectorAll('.i.i-volume-up.c_aud.htc.hdib.hp.hv-1.fon.tcu.tc-bd.lmr-10.lpt-3')[1].click();
Send, {Enter}
return

#/::
Reload
return

F4::
Click, 578, 55
return