#j::
IfWinExist, JabRef
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