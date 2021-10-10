.data
	str: .asciz "hello"
	char: .asciz "l"
.text
	ldr r0, =str
	ldr r1, =char
	ldrb r3, [r1]
	mov r5, #0
	loop:
		ldrb r2, [r0], #1
		cmp r2, #0
		bNE check
		bEQ exit

	check:
		cmp r2, r3
		addEQ r5, r5, #1
		b loop

exit:
	.end
