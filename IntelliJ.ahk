#w::
IfWinNotExist, ahk_exe idea.exe
{
  Run "C:\Program Files (x86)\JetBrains\IntelliJ IDEA 2016.2\bin\idea.exe"
  WinWait, ahk_exe idea.exe
}
WinActivate
return
