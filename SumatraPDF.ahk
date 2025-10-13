#Requires AutoHotkey v2.0

#s:: {
    if !WinExist("ahk_class SUMATRA_PDF_FRAME") {
        Run "C:\Program Files (x86)\SumatraPDF\SumatraPDF.exe"
        WinWait "ahk_class SUMATRA_PDF_FRAME"
    }
    WinActivate "ahk_class SUMATRA_PDF_FRAME"
}
