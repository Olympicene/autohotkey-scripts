#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#IfWinActive, ahk_exe chrome.exe  

:R*?:ddd::
FormatTime, CurrentDateTime,, yy.MM.dd.
SendInput %CurrentDateTime%
return
:R*?:xxx::
FormatTime, CurrentDateTime,, MM/dd HH:mm
SendInput %CurrentDateTime%
return
:R*?:aaa::
FormatTime, CurrentDateTime,, yyMMdd
SendInput %CurrentDateTime%
return
:R*?:jjd::
FormatTime, CurrentDateTime,, dd-MM-yy
SendInput %CurrentDateTime%
return
:R*?:yyy::
FormatTime, CurrentDateTime,, dd-MM-yy HH:mm
SendInput %CurrentDateTime%
return