.data
  a: .word 0
  b: .word 10
  c: .word 0
  e: .word 20
  f: .word 30
.text
  ldr r0, =a
  ldr r1, =b
  ldr r2, =c
  ldr r3, =e
  ldr r4, =f
  ldr r5, [r1]
  ldr r6, [r6]
  ldr r7, [r4]
  add r8, r5, r6
  add r9, r5, r7
  str r8, [r0]
  str r9, [r2]
.end