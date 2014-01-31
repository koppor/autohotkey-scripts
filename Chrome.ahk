#g::
IfWinExist, ahk_class Chrome_WidgetWin_1
{
  WinActivate
}
else
{
  RegRead, UserLocal, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders, Local AppData
  MsgBox %UserLocal%
  Run % UserLocal . "\Google\Chrome\Application\chrome.exe"
  WinWait ahk_class Chrome_WidgetWin_0
  WinActivate
}
return