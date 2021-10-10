.data
	srcstr: .asciz "microprocessor"
	dststr: .asciz "aaaaaaaaaaaaaa"

.text
	ldr r0, =srcstr
	ldr r1, =dststr
	copy:
		ldrb r2, [r0], #1
		cmp r2, #0
		strb r2, [r1], #1
		bNE copy
	ldr r0, =dststr
	swi 0x02
.end
