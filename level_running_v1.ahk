WinWait, MortalGame, 
IfWinNotActive, MortalGame, , WinActivate, MortalGame, 
WinWaitActive, MortalGame, 

while 1 = 1{
sleep 10000
}

q::
SoundPlay, sfx_switch_on.wav
runtime = 12000
backtime = 19000

while 1 = 1{
Send, {W down}
Send, {Shift Down}
sleep %runtime%
Send, {Shift Up}
sleep 100
Send {W up}
sleep 300
Send, {S down}
sleep %backtime%
Send, {S up}
sleep 300


}
Esc::exitapp ; in case of emergency hit escape key
