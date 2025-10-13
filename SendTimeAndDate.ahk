#Requires AutoHotkey v2.0

!^+t:: {
    Send Format("{}-{:02}-{:02} {:02}.{:02}", A_YYYY, A_MM, A_DD, A_Hour, A_Min)
}
