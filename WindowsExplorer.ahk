#e::
IfWinNotExist, ahk_class CabinetWClass
{
  Run C:\Windows\explorer.exe
  WinWait ahk_class CabinetWClass
}
WinActivate
return