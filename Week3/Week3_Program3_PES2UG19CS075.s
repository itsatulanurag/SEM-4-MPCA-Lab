.data
  a: .word 5,8,4,2,6

.text
  ldr r0, =a
  mov r1, #5
  ldr r2, [r0]
  add r0, r0, #4
  loop:
    cmp r2, #0
    bEQ end
    sub r1, r1, #1
    ldr r3, [r0]
    add r0, r0, #4
    cmp r3, r2
    movLO r2, r3
    cmp r1, #1
    bEQ end
    b loop

end:
  .end