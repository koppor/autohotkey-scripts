#b::
IfWinNotExist, ahk_exe firefox.exe
{
  Run C:\Program Files (x86)\Mozilla Firefox\firefox.exe
  WinWait ahk_exe firefox.exe
}
WinActivate
return
