.data
	str: .asciz "Hello"

.text
	ldr r0, =str
	mov r1, #0
	check:
		ldrb r2, [r0], #1
		cmp r2, #0
		addNE r1, r1, #1
		bNE check
swi 0x11
.end
