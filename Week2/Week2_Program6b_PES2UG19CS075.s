.data
  A: .byte 1,2,3,4,5
  count: .byte 5
  sum: .byte 0
.text
  ldr r0, =A
  ldr r1, =count
  ldr r3, =sum
  ldrsb r1, [r1]
  ldrsb r3, [r3]
  check:
    ldrsb r2, [r0]
    add r3, r3, r2
    add r0, r0, #1
    sub r1, r1, #1
    cmp r1, #0
    bEQ end
    b check
end:
.end
