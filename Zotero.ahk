#Requires AutoHotkey v2.0

#z:: {
    if !WinExist("ahk_exe zotero.exe") {
        Run "C:\Program Files (x86)\Zotero\zotero.exe"
        WinWait "ahk_exe zotero.exe"
    }
    WinActivate "ahk_exe zotero.exe"
}
