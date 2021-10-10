.data
  a: .word 1
  b: .word 2
  c: .word 3
.text
  ldr r0, =a
  ldr r1, =b
  ldr r2, =c
  ldr r3, [r0]
  ldr r4, [r1]
  ldr r5, [r2]
  add r6, r3, r4
  sub r6, r6, r5
.end