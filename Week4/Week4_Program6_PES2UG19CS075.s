.data
  a: .word 1,2,3,4
  sum: .word 0
.text
  ldr r0, =a
  ldr r1, =sum
  mov r2, #2
  mov r3, #0
  outerloop:
    mov r4, #0
    mov r5, #0
    innerloop:
      ldr r6, [r0]
      add r0, r0, #4
      add r5, r5, r6
      add r4, r4, #1
      cmp r4, r2
      bNE innerloop
    str r5, [r1]
    add r3, r3, #1
    cmp r3, r2
    addNE r1, r1, #4
    bNE outerloop
.end