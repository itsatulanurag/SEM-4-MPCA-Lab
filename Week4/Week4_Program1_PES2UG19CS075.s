.data
  a: .word 1,2,3,4,5
  b: .word 1,2,3,4,5
  c: .word 0,0,0,0,0
.text
  ldr r0, =a
  ldr r1, =b
  ldr r2, =c
  mov r6, #5
  loop:
    ldr r3, [r0]
    add r0, r0, #4
    ldr r4, [r1]
    add r1, r1, #4
    add r5, r3, r4
    str r5, [r2]
    add r2, r2, #4
    sub r6, r6, #1
    cmp r6, #0
    bNE loop
.end