.setcpu "65C02"

.segment "CODE"
reset:
	nop		; Don't actually do anything
	jmp	reset	; Go back to the nop instruction

.segment "RESET"
	.word	reset	; Go to the reset subroutine
