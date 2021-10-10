.text
  mov r0, #0b00000000000000000000000000001001
  mov r1, #32
  mov r2, #0
  mov r3, #0
  loop:
    movs r0, r0, lsr#1
    addCS r2, r2, #1
    addCC r3, r3, #1
    subs r1, r1, #1
    cmp r1, #0
    bEQ end
    b loop
end:
  .end