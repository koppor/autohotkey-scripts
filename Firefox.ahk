#b::
IfWinNotExist, ahk_class MozillaWindowClass
{
  Run C:\Program Files (x86)\Mozilla Firefox\firefox.exe
  WinWait ahk_class MozillaWindowClass
}
WinActivate
return
