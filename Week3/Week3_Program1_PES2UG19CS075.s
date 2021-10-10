.data
  a: .word 10000000, 20000000
  b: .word 30000000, 40000000
  c: .word 0
.text
  ldr r0, =a
  ldr r1, =b
  ldr r2, =c
  ldr r4, [r0]
  ldr r5, [r1]
  add r4, r4, r5
  str r4, [r2]
  ldr r4, [r0, #4]
  ldr r5, [r1, #4]
  add r6, r4, r5
  str r6, [r2, #4]
.end