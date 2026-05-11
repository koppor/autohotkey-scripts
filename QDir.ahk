#e::
IfWinNotExist, ahk_exe qdir.exe
{
  Run C:\ProgramData\chocolatey\bin\qdir.exe
  WinWait ahk_exe qdir.exe
}
WinActivate
return
