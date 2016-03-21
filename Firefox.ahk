#b::
IfWinNotExist, Mozilla Firefox
{
  Run C:\Program Files (x86)\Mozilla Firefox\firefox.exe
  WinWait Mozilla Firefox
}
WinActivate
return
