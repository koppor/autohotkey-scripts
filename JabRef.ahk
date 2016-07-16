#j::
IfWinNotExist, JabRef ahk_class SunAwtFrame
{
  Run "C:\Program Files\JabRef\JabRef.exe"
  WinWait JabRef
}
WinActivate
return
