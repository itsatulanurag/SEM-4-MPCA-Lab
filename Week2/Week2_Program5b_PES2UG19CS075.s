.data
  A: .word 12
  B: .word 18

.text
  ldr r0, =A
  ldr r1, =B
  ldr r2, [r0]
  ldr r3, [r1]

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
