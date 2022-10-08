#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#IfWinActive Minecraft

+::
Send {Rbutton Down}
return

_::
Send {Lbutton Down}
return

^p::
Loop {
Send {Lbutton Down}
Sleep 100000
Send {Lbutton Up}
Send 500
Send {/}
sleep 500
Send sell inventory
sleep 500
Send {Enter}
sleep 500
}
return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Reload;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
!r::
Reload
return

