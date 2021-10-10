.text

mov r0, #3
mov r1, r0

fact:
  sub r0, r0, #1
  cmp r0, #1
  bEQ end
  mul r2, r1, r0
  mov r1, r2
  b fact

end:
.end
