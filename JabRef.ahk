#j::
IfWinNotExist, JabRef ahk_class SunAwtFrame
{
  Run "C:\Program Files (x86)\JabRef\JabRef.exe"
  WinWait JabRef
}
WinActivate
return
