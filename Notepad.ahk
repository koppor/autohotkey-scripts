#+::
IfWinNotExist, ahk_class Notepad++
{
  Run "C:\Program Files\Notepad++\Notepad++.exe"
  WinWait ahk_class Notepad++
}
WinActivate
return