.data
  a: .word 5, 10, 15, 20, 25, 30, 35, 40, 45, 50
.text
  mov r2, #31
  mov r3, #10
  ldr r0, =a
  loop:
    ldr r1, [r0]
    add r0, r0, #4
    cmp r1, r2
    bEQ exit
    subs r3, r3, #1
    bNE loop
    mov r6, #-1
    b end
  exit:
    mov r4, #11
    sub r7, r4, r3
end:
  .end