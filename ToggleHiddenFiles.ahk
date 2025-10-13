#Requires AutoHotkey v2.0

^!h:: {
    hiddenStatus := RegRead("HKEY_CURRENT_USER\\Software\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Advanced", "Hidden")
    if hiddenStatus = 2
        RegWrite(1, "REG_DWORD", "HKEY_CURRENT_USER\\Software\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Advanced", "Hidden")
    else
        RegWrite(2, "REG_DWORD", "HKEY_CURRENT_USER\\Software\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Advanced", "Hidden")
    Send "{F5}"
}
