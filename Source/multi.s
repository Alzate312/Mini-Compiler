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

;factor 1
LDA 	#7
STA 	$AA

;signo factor 1
LDA 	#0
STA 	$AB

;factor2
LDA 	#23
STA 	$55

;signo factor2
LDA 	#0
STA 	$56

;clear A
LDA 	#0

;iterate 8 times,1byte,8bites
LDX 	#$8

;shift right 1 time factor 1
LSR 	$AA

L1:
	BCC L2 		;seguimos si el último bit de AA es 0
	CLC			;si último bit de AA es 1, limpiamos
	ADC $55 	;y multiplicamos por 1, o sea, sumamos el factor 2
L2:
	ROR			;escaloncitos para sumar los resultados
	ROR $AA 	;sacamos el último bit de AA
	DEX			;x--
	BNE L1		;si no es cero, seguimos
	STA $55 	;si es cero, acabamos

; done, high result in factor2, low result in factor1

;while(1)
papa: JMP papa

.endproc
