#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;alias gbr="git branch"
;alias gps="git push"
;alias gpl="git pull"
;alias gcm="git commit -m"
;alias gcam="git commit -a -m"
;alias gst="git status"
;alias gdf="git diff"
;alias gad="git add"
;alias gch="git checkout"
;alias gchb="git checkout -b"


:*:gbr::git branch
:*:gps::git push
:*:gpl::git pull
:*:gcm::git commit -m"
:*:gcam::git commit -a -m"
:*:gst::git status
:*:gdf::git diff
:*:gad::git add
:*:gch::git checkout
:*:gchb::git checkout -b
