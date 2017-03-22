#w::
IfWinNotExist, ahk_exe idea64.exe
{
  Run "C:\Program Files (x86)\JetBrains\IntelliJ IDEA 2016.3\bin\idea64.exe"
  WinWait, ahk_exe idea64.exe
}
WinActivate
return
