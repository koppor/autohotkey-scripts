#j::
IfWinExist, JabRef ahk_class SunAwtFrame
{
  WinActivate
}
else
{
  Run cmd /c start C:\Users\Oliver\BTSync\bin\JabRef.bat
  WinWait JabRef
  WinActivate
}
return