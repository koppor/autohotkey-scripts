#+::
IfWinNotExist, ahk_class Notepad++
{
;  Run "C:\Program Files (x86)\Trayconizer.exe" "C:\Program Files (x86)\Notepad++\Notepad++.exe"
  Run "C:\Program Files (x86)\Notepad++\Notepad++.exe"
  WinWait ahk_class Notepad++
}
WinActivate
return