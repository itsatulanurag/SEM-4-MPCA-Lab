.data
   a: .word 0
.text
  mov r0, #10
  ldr r1, =a
  mov r2, #0
  mov r3, #1
  str r2, [r1]
  loop:
    sub r0, r0, #1
    cmp r0, #0
    bEQ end
    add r1, r1, #4
    str r3, [r1]
    add r4, r2, r3
    mov r2, r3
    mov r3, r4
    b loop
end:
  .end
  