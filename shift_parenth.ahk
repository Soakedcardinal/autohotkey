#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
// #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

~LShift::
	KeyWait, LShift
	If (A_TimeSinceThisHotkey < 250 and A_PriorKey = "LShift") {
		Send, (
        }
if quickclicks > 0 ; SetTimer already started, so log keypress instead
{
    quickclicks += 1
    Return
}
quickclicks = 1
SetTimer, TheKey, 500
Return
TheKey:
SetTimer, TheKey, off
if quickclicks = 2 ;
   	{ 
	send, {BackSpace}{BackSpace}
	send, [
	}
if quickclicks = 3 ; 
   	{
   	send, {BackSpace}{BackSpace}{BackSpace}
	send, {{}
   	}
if quickclicks = 4 ; 
   	{
   	send, {BackSpace}{BackSpace}{BackSpace}{BackSpace}
	send, {<}
   	}
quickclicks = 0
return

~RShift::
	KeyWait, RShift
	If (A_TimeSinceThisHotkey < 250 and A_PriorKey = "RShift") {
		Send, )
	}
if rquickclicks > 0 ; SetTimer already started, so log keypress instead
{
    rquickclicks += 1
    Return
}
rquickclicks = 1
SetTimer, rTheKey, 500
Return
rTheKey:
SetTimer, rTheKey, off
if rquickclicks = 2 ;
   	{ 
	send, {BackSpace}{BackSpace}
	send, ]
	}
if rquickclicks = 3 ; 
   	{
   	send, {BackSpace}{BackSpace}{BackSpace}
	send, {}}
   	}
if rquickclicks = 4 ; 
   	{
   	send, {BackSpace}{BackSpace}{BackSpace}{BackSpace}
	send, {>}
   	}
rquickclicks = 0
return
