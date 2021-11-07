#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;imports
#Include, TF.ahk

;declare input file
Inputfile := "input.txt"

;replace periods with newlines
TF_RegExReplace("!" . Inputfile,"[?!.]","`n")
TF_RegExReplace("!" . Inputfile," [^\x00-\x7F]","")

;remove newlines
TF_RemoveBlankLines("!" . Inputfile)


;init variables
GetLine() {
    global Inputfile
    str := TF_ReadLines(Inputfile, 1, 1)
    TF_RemoveLines("!" . Inputfile, 1, 2)
    Send, %str%
    Send, {Enter}
}

F1::
GetLine()

; Send, %Str%
; Send, {Enter}