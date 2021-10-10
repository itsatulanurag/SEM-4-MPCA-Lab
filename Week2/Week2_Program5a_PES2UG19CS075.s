.text
mov r0, #12
mov r1, #18
mov r2, r0
mov r3, r1

check:
  cmp r2, r3
  bEQ end
  bLT less
  b greater
  less:
    sub r3, r3, r2
    b check
  greater:
    sub r2, r2, r3
    b check

end:
.end
