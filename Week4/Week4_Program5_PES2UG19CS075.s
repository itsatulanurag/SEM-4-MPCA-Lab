.data
  a: .word 1,2,3,4
  b: .word 1,2,3,4
  c: .word 0
.text
  ldr r0, =a
  ldr r1, =b
  ldr r2, =c
  mov r3, #2
  mov r4, #0
  outerloop:
    mov r5, #0
    innerloop:
      ldr r6, [r0]
      ldr r7, [r1]
      add r0, r0, #4
      add r1, r1, #4
      add r8, r6, r7
      str r8, [r2]
      add r2, r2, #4
      add r5, r5, #1
      cmp r5, r3
      bNE innerloop
    add r4, r4, #1
    cmp r4, r3
    bNE outerloop
.end