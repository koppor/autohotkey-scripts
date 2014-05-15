#o::
IfWinNotExist, ahk_class OpWindow ; simplified
  {
  Run C:\Program Files (x86)\Opera\Opera.exe
  WinWait ahk_class OpWindow
  }
WinActivate ; common to both branches - no need to state in each
return
