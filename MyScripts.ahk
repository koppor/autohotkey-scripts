#Requires AutoHotkey v2.0
#SingleInstance Force
#UseHook True

; True if the window is cloaked (e.g. lives on another virtual desktop).
IsCloaked(hwnd) {
    cloaked := 0
    DllCall("dwmapi\DwmGetWindowAttribute", "Ptr", hwnd, "UInt", 14, "UInt*", &cloaked, "UInt", 4)
    return cloaked != 0
}

; Matching windows on the current virtual desktop, in z-order (topmost first).
WindowsOnCurrentDesktop(winSpec) {
    result := []
    for hwnd in WinGetList(winSpec) {
        if !IsCloaked(hwnd)
            result.Push(hwnd)
    }
    return result
}

; Activate the matching window on the current desktop; if one is already focused,
; switch to the next instance (cycling). If none exists, launch exePath and wait.
ActivateOrRun(winSpec, exePath) {
    wins := WindowsOnCurrentDesktop(winSpec)
    if wins.Length = 0 {
        Run exePath
        if WinWait(winSpec, , 10)
            WinActivate winSpec
        return
    }
    if wins.Length > 1 && WinActive("ahk_id " wins[1])
        WinActivate "ahk_id " wins[wins.Length]  ; bottom of z-order -> next instance
    else
        WinActivate "ahk_id " wins[1]
}

; ---------------------------------------------------------------------------
; Enabled — comment a line out to disable it.
; ---------------------------------------------------------------------------

; Win+B — Firefox
#b:: ActivateOrRun("ahk_exe firefox.exe", "C:\Program Files (x86)\Mozilla Firefox\firefox.exe")

; Win+W — IntelliJ IDEA
#w:: ActivateOrRun("ahk_exe idea64.exe", "C:\Program Files (x86)\JetBrains\IntelliJ IDEA 2016.3\bin\idea64.exe")

; Win+J — JabRef
#j:: ActivateOrRun("JabRef ahk_class ahk_class GlassWndClass-GlassWindowClass-2", "C:\Program Files\JabRef\JabRef.exe")

; Win+N — Notepad++ (overrides the Windows 11 notification center)
#n:: ActivateOrRun("ahk_class Notepad++", "C:\Program Files\Notepad++\Notepad++.exe")

; Win+S — SumatraPDF
#s:: ActivateOrRun("ahk_class SUMATRA_PDF_FRAME", "C:\Program Files (x86)\SumatraPDF\SumatraPDF.exe")

; Win+E — Windows Explorer (focus existing window if present)
#e:: ActivateOrRun("ahk_class CabinetWClass", "C:\Windows\explorer.exe")

; Win+T — Windows Terminal (overrides cycling through the task bar)
#t:: ActivateOrRun("ahk_exe WindowsTerminal.exe", "wt")

; Win+C — Claude desktop app (overrides Copilot)
#c:: ActivateOrRun("ahk_class Chrome_WidgetWin_1 ahk_exe claude.exe", "shell:AppsFolder\Claude_pzs8sxrjxfjjc!Claude")

; Win+O — OneNote
#o:: ActivateOrRun("ahk_exe ONENOTE.EXE", "C:\Program Files\Microsoft Office\root\Office16\ONENOTE.EXE")

; Ctrl+Alt+Shift+D — type the current date (yyyy-MM-dd)
!^+d:: Send Format("{}-{:02}-{:02}", A_YYYY, A_MM, A_DD)

; ---------------------------------------------------------------------------
; Disabled — uncomment a line to enable it.
; ---------------------------------------------------------------------------

; Win+G — Chrome
; #g:: ActivateOrRun("ahk_class Chrome_WidgetWin_1", "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe")

; Win+T — ConEmu (conflicts with Windows Terminal above)
; #t:: ActivateOrRun("ahk_class VirtualConsoleClass", "C:\Program Files\ConEmu\ConEmu64.exe")

; Win+O — Opera (conflicts with OneNote above)
; #o:: ActivateOrRun("ahk_class OpWindow", "C:\Program Files (x86)\Opera\Opera.exe")

; Win+Z — Zotero
; #z:: ActivateOrRun("ahk_exe zotero.exe", "C:\Program Files (x86)\Zotero\zotero.exe")

; Ctrl+Alt+Shift+T — type the current date and time (yyyy-MM-dd HH.mm)
; !^+t:: Send Format("{}-{:02}-{:02} {:02}.{:02}", A_YYYY, A_MM, A_DD, A_Hour, A_Min)

; Ctrl+Alt+H — toggle hidden files in Windows Explorer
; ^!h:: {
;     hiddenStatus := RegRead("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced", "Hidden")
;     if hiddenStatus = 2
;         RegWrite(1, "REG_DWORD", "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced", "Hidden")
;     else
;         RegWrite(2, "REG_DWORD", "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced", "Hidden")
;     Send "{F5}"
; }
