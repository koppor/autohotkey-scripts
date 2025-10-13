#Requires AutoHotkey v2.0

#c:: {
    if !WinExist("ahk_class VirtualConsoleClass") {
        Run "C:\Program Files\ConEmu\ConEmu64.exe"
        WinWait "ahk_class VirtualConsoleClass"
    }
    WinActivate "ahk_class VirtualConsoleClass"
}
