#j::
IfWinNotExist, JabRef ahk_class SunAwtFrame
{
  Run cmd /c start C:\Users\Oliver\BTSync\bin\JabRef.bat
  WinWait JabRef
}
WinActivate
return