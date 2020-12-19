; Vim like mode
;!h::Send, {Left}
;!l::Send, {Right}
;!k::Send, {Up}
;!j::Send, {down}
!h::SendInput, {Left down}{Left up}
!l::SendInput, {Right down}{Right up}
!k::SendInput, {Up down}{Up up}
!j::SendInput, {down down}{down up}
