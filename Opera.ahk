#Requires AutoHotkey v2.0

#o:: {
    if !WinExist("ahk_class OpWindow") {
        Run "C:\Program Files (x86)\Opera\Opera.exe"
        WinWait "ahk_class OpWindow"
    }
    WinActivate "ahk_class OpWindow"
}
