;FUNCTIONS==========================================================================
cast()
{
Sleep 2000
ControlSend, , q, MortalGame
}
rest()
{
Sleep 1000
ControlSend, , 4, MortalGame
}
eat()
{
	Sleep 1000
	ControlSend, , 5, MortalGame
}
stopeating()
{
	Sleep 1000
	ControlSend, , w, MortalGame
}
changeToCast()
{
ControlSend, , 3, MortalGame
}

;MAIN LOOP, CLICK INSERT TO START==================================================
Insert::

;variables
numberofcasts = 45 ;SET HOW MANY TIMES SPURT WILL CAST
resttime = 20000 ;SET HOW LONG YOU WILL REST

Loop
{
	Loop 1{
		changeToCast()
		Loop %numberofcasts%
		{
			cast()
		}
		rest()
		sleep %resttime%
		rest()
	}
	eat()
	sleep 6000
	stopeating()
}

Delete::ExitApp ; exits autohotkey on Delete