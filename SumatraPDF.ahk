#s::
IfWinNotExist, ahk_class SUMATRA_PDF_FRAME
{
  Run "C:\Program Files (x86)\SumatraPDF\SumatraPDF.exe"
  WinWait ahk_class SUMATRA_PDF_FRAME
}
WinActivate
return