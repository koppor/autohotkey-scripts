#Requires AutoHotkey v2.0

#c:: {
    if !WinExist("ahk_exe WindowsTerminal.exe") {
        Run "wt"
        WinWait "ahk_exe WindowsTerminal.exe"
    }
    WinActivate "ahk_exe WindowsTerminal.exe"
}
