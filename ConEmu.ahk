#v::
IfWinExist, ahk_class VirtualConsoleClass
{
  WinActivate
}
else
{
  Run "C:\Program Files\ConEmu\ConEmu64.exe"
  WinWait ahk_class VirtualConsoleClass
  WinActivate
}
return
