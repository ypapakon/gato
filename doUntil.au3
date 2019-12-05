;HotKeySet("{F3}","Start")
;HotkeySet("{F4}","End")

;Func Start()
Sleep(3000)

   Do

   ;Walk up
   _SendDuration("{Up}", 5000, 5, 5)

   ;Cast
   Send("2")
   Sleep(2000)
   Send("G")
   Sleep(500)

   ;Walk down
   _SendDuration("{Down}", 5000, 5, 5)

   ;Cast
   Send("2")
   Sleep(2000)
   Send("G")
   Sleep(500)

   until 1 = 2

;EndFunc


Func _SendDuration($v_Send, $i_Duration, $i_SendDownDelay = 1, $i_SendKeyDelay = 1)
    $OptSendDownDelay = Opt('SendKeyDownDelay', $i_SendDownDelay)
    $OptSendKeyDelay = Opt('SendKeyDelay', $i_SendKeyDelay)
    Local $SendTimer = TimerInit()
    Do
        Send($v_Send)
    Until TimerDiff($SendTimer) >= $i_Duration
    Opt('SendKeyDownDelay', $OptSendDownDelay)
    Opt('SendKeyDelay', $OptSendKeyDelay)
EndFunc

Func End()
    Exit 0
 EndFunc

