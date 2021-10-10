.data
  a: .word 1, 2, 0, -3, -4, 0, 0, 5, 6, 0
.text
  ldr r0, =a
  mov r1, #10
  mov r5, #0
  mov r4, #0
  mov r3, #0
  loop:
    ldr r2, [r0]
    add r0, r0, #4
    cmp r2, #0
    addEQ r4, r4, #1
    addGT r5, r5, #1
    addLT r3, r3, #1
    subs r1, r1, #1
    bNE loop
.end
