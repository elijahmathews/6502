int8_add:
	pha		; Push the existing value of A onto stack.
	lda	$00	; Load 0000 into A.
	adc	$01	; Add 0001 to A with carry.
	sta	$02	; Store sum at 0002.
	pla		; Pull previous A back to A.
	rts		; Return from subroutine.
