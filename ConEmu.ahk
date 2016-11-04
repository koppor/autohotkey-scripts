#c::
IfWinNotExist, ahk_class VirtualConsoleClass
{
  Run "C:\Program Files\ConEmu\ConEmu64.exe"
  WinWait ahk_class VirtualConsoleClass
}
WinActivate
return
