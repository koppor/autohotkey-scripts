#Requires AutoHotkey v2.0

!^+d:: {
    Send Format("{}-{:02}-{:02}", A_YYYY, A_MM, A_DD)
}
