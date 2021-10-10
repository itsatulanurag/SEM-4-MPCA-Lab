.data
  a: .word 1, 2, 3, 4, 5
  b: .word 0, 0, 0, 0, 0

.text
  ldr r0, =a
  ldr r1, =b
  mov r3, #5
  loop:
    ldr r4, [r0]
    str r4, [r1]
    add r0, r0, #4
    add r1, r1, #4
    cmp r3, #1
    sub r3, r3, #1
    bEQ end
    b loop
end:
  .end
