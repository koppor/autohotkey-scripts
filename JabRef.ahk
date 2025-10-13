#Requires AutoHotkey v2.0

#j:: {
    if !WinExist("JabRef ahk_class ahk_class GlassWndClass-GlassWindowClass-2") {
        Run "C:\Program Files\JabRef\JabRef.exe"
        WinWait "JabRef ahk_class ahk_class GlassWndClass-GlassWindowClass-2"
    }
    WinActivate "JabRef ahk_class ahk_class GlassWndClass-GlassWindowClass-2"
}
