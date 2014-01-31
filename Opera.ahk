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
