;LDA #0
;LDA #20 ; B - solo necesitamos low bytes!
;PHA ;push
;LDA #10 ; A - solo necesitamos low bytes!
;PHA ;push

PLA ;pull
BEQ L1 ;if A=0
JMP L2 ;if A!=0
L1: PLA
    LDA #0
    PHA
    JMP L3
L4: LDA #0
    PHA
    JMP L3
L2: PLA
    BEQ L4 ;if B=0
    LDA #1 ;if B!=0
    PHA
L3:
