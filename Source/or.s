;LDA #0
;LDA #20 ; B - solo necesitamos low bytes!
;PHA ;push
;LDA #10 ; A - solo necesitamos low bytes!
;PHA ;push

PLA ;pull
BEQ L1 ;if A=0
JMP L2 ;if A!=0
L1: PLA
    BEQ L3 ;if B=0
    JMP L5 ;if B!=0
L5: LDA #1
    PHA
    JMP L4
L2: PLA
    LDA #1
    PHA
    JMP L4
L3: LDA #0
    PHA
L4:
