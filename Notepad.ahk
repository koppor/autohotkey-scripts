#Requires AutoHotkey v2.0

#+:: {
    if !WinExist("ahk_class Notepad++") {
        Run "C:\Program Files\Notepad++\Notepad++.exe"
        WinWait "ahk_class Notepad++"
    }
    WinActivate "ahk_class Notepad++"
}
