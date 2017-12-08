;FUNCTIONS=========================================================================
cast()
{
Sleep 100
ControlClick, , MortalGame
}
rest()
{
Sleep 1000
ControlSend, , 4, MortalGame
}

;MAIN LOOP, CLICK INSERT TO START==================================================
Insert::
SoundPlay, audio/switch_on.wav
;variables
numberofcasts = 45 ;SET HOW MANY TIMES SPURT WILL CAST
punchtime = 1200 ;SET THE TIME BETWEEN PUNCHES
resttime = 1000 ;SET HOW LONG YOU WILL REGEN STAM

Loop
{
	Loop %numberofcasts%
	{
		sleep %punchtime%
		cast()
	}
}

Delete::
SoundPlay, audio/switch_on.wav
ExitApp ; exits autohotkey on Delete