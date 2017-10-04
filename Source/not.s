;LDA #0
;LDA #10 ; solo necesitamos low bytes!
;PHA ;push

PLA ;pull
BEQ L1 ;if A=0
LDA #0 ;if A!=0 -> push 0
PHA
JMP L2
L1: LDA #1 ;if A=0 ->  push 1
    PHA
L2:
