.data
  a: .word 1,2,3,4
  b: .word 0
.text
  ldr r0, =a
  ldr r1, =b
  mov r5, #2
  mov r2, #0
  outerloop:
    mov r3, #0
    innerloop:
      ldr r4, [r0]
      add r0, r0, #4
      str r4, [r1]
      add r1, r1, #4
      add r3, r3, #1
      cmp r3, r5
      bNE innerloop
    add r2, r2, #1
    cmp r2, r5
    bNE outerloop
.end