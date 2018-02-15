#z::
IfWinNotExist, ahk_exe zotero.exe
{
  Run C:\Program Files (x86)\Zotero\zotero.exe
  WinWait ahk_exe zotero.exe
}
WinActivate
return
