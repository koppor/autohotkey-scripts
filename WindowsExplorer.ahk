#Requires AutoHotkey v2.0

#e:: {
    if !WinExist("ahk_class CabinetWClass") {
        Run "C:\Windows\explorer.exe"
        WinWait "ahk_class CabinetWClass"
    }
    WinActivate "ahk_class CabinetWClass"
}
