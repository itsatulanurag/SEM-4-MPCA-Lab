.data
  A: .word 1
  B: .word 2
  C: .word 0
.text
  ldr r0, =A
  ldr r1, =B
  ldr r2, =C
  ldr r3, [r0]
  ldr r4, [r1]
  add r5, r3, r4
  mov r6, r4, lsl #2
  add r6, r4, r6
  add r7, r6, r5
  str r7, [r2]
.end
