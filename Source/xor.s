;
; File generated by cc65 v 2.13.3
;
	.fopt		compiler,"cc65 v 2.13.3"
	.setcpu		"6502"
	.smart		on
	.autoimport	on
	.case		on
	.debuginfo	off
	.importzp	sp, sreg, regsave, regbank, tmp1, ptr1, ptr2
	.macpack	longbranch
	.forceimport	__STARTUP__
	.import		_waitvblank
	.export		_main

; ---------------------------------------------------------------
; int __near__ main (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_main: near

.segment	"CODE"

; no trash
SEI

LDA #0
LDA #20 ; B - solo necesitamos low bytes!
PHA ;push
LDA #10 ; A - solo necesitamos low bytes!
PHA ;push

PLA ;pull
BEQ L1 ;if A=0
JMP L2 ;if A!=0
L1: PLA
    BEQ L3 ;if B=0
    JMP L4 ;if B!=0
L2: PLA
    BEQ L4 ;if B=0
    JMP L3 ;if B!=0
L3: LDA #0
    PHA
    JMP L5
L4: LDA #1
    PHA
L5:




;while(1)
papa: JMP papa

.endproc
