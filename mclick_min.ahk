CoordMode,Mouse,Screen
; Minimize the window
~MButton::
MouseGetPos,mx,my,mwin,mctrl
SendMessage,0x84,,(my<<16)|mx,,ahk_id %mwin%
If (ErrorLevel= "2")
{
WinMinimize, A
}
Return
