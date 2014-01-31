#e::
IfWinExist, ahk_class CabinetWClass
{
  WinActivate
}
else
{
  Run C:\Windows\explorer.exe
  WinWait ahk_class CabinetWClass
  WinActivate
}
return