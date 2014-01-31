#b::
IfWinExist, ahk_class MozillaWindowClass
{
  WinActivate
}
else
{
  Run C:\Program Files (x86)\Mozilla Firefox\firefox.exe
  WinWait ahk_class MozillaWindowClass
  WinActivate
}
return

#o::
IfWinExist, ahk_class OpWindow
{
  WinActivate
}
else
{
  Run C:\Program Files (x86)\Opera\Opera.exe
  WinWait ahk_class OpWindow
  WinActivate
}
return
