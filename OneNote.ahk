#Requires AutoHotkey v2.0

#o:: {
    if !WinExist("ahk_exe ONENOTE.EXE") {
        Run "C:\Program Files\Microsoft Office\root\Office16\ONENOTE.EXE"
        WinWait "ahk_exe ONENOTE.EXE"
    }
    WinActivate "ahk_exe ONENOTE.EXE"
}
