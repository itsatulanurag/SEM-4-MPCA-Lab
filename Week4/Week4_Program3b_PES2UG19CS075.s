.data
  a: .word 1,2,3,4,5
  b: .word 1,2,3,4,5
.text
  ldr r0, =a
  ldr r1, =b
  mov r2, #5
  mov r5, #0
  loop:
    ldr r3, [r0]
    add r0, r0, #4
    ldr r4, [r1]
    add r1, r1, #4
    mla r5, r3, r4, r5
    sub r2, r2, #1
    cmp r2, #0
    bNE loop
.end