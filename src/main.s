.setcpu "65C02"

.segment "CODE"

reset:
	nop		; Don't actually do anything.
	jmp	reset	; Go back to the NOP instruction.

.segment "RESET"	; Reset requires special handling.
			; Execution starts at address stored
			; at address FFFC.

resetvec:
	.word	reset	; Go to the reset label.
