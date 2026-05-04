#Requires AutoHotkey v2.0
#SingleInstance Force

; Activate the matching window if it exists; otherwise launch exePath and wait.
ActivateOrRun(winSpec, exePath) {
    if !WinExist(winSpec) {
        Run exePath
        WinWait winSpec
    }
    WinActivate winSpec
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

; Win++ — Notepad++
#+:: ActivateOrRun("ahk_class Notepad++", "C:\Program Files\Notepad++\Notepad++.exe")

; Win+S — SumatraPDF
#s:: ActivateOrRun("ahk_class SUMATRA_PDF_FRAME", "C:\Program Files (x86)\SumatraPDF\SumatraPDF.exe")

; Win+E — Windows Explorer (focus existing window if present)
#e:: ActivateOrRun("ahk_class CabinetWClass", "C:\Windows\explorer.exe")

; Win+C — Windows Terminal
#c:: ActivateOrRun("ahk_exe WindowsTerminal.exe", "wt")

; Win+O — OneNote
#o:: ActivateOrRun("ahk_exe ONENOTE.EXE", "C:\Program Files\Microsoft Office\root\Office16\ONENOTE.EXE")

; Ctrl+Alt+Shift+D — type the current date (yyyy-MM-dd)
!^+d:: Send Format("{}-{:02}-{:02}", A_YYYY, A_MM, A_DD)

; ---------------------------------------------------------------------------
; Disabled — uncomment a line to enable it.
; ---------------------------------------------------------------------------

; Win+G — Chrome
; #g:: ActivateOrRun("ahk_class Chrome_WidgetWin_1", "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe")

; Win+C — ConEmu (conflicts with Windows Terminal above)
; #c:: ActivateOrRun("ahk_class VirtualConsoleClass", "C:\Program Files\ConEmu\ConEmu64.exe")

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
