.data
	str: .asciz "Hello World"

.text
	ldr r1, =str
	check:
		ldrb r0, [r1], #1
		cmp r0, #0
		swiNE 0x00
		bNE check
.end
