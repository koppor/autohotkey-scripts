#g::
IfWinNotExist, ahk_class Chrome_WidgetWin_1
{
  Run "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
  WinWait ahk_class Chrome_WidgetWin_1
}
WinActivate
return