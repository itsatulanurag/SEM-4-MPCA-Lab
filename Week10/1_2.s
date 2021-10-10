.data
  a: .word 10
  b: .word 20
.text
  ldr r0, =a
  ldr r1, =b
  ldr r2, [r0]
  ldr r3, [r1]
  mov r4, r2, lsl #2
  and r5, r3, #15
  orr r6, r4, r5
.end