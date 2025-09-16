.setcpu "65C02"

.segment "CODE"

RESET:
	nop		; Don't actually do anything.
	jmp	RESET	; Go back to the NOP instruction.

.include "lib/math.s"	; Include math subroutines.

_NMI_HANDLER:
	rti		; Return from whence we came.

_IRQ_HANDLER:
	rti		; Return from whence we came.

.segment "VECTORS"	; Reset requires special handling.
			; Execution starts at address stored
			; at address FFFC.

.addr	_NMI_HANDLER	; NMI vector at $FFFA.
.addr	RESET		; RESET vector at $FFFC.
.addr	_IRQ_HANDLER	; IRQ vector at $FFFE.
