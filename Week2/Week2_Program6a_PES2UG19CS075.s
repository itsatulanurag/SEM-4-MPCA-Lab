.data
  A: .word 1,2,3,4,5,6,7,8,9,10
  count: .word 10
  sum: .word 0
.text
  ldr r0, =A
  ldr r1, =count
  ldr r3, =sum
  ldr r1, [r1]
  ldr r3, [r3]
  check:
    ldr r2, [r0]
    add r3, r3, r2
    add r0, r0, #4
    sub r1, r1, #1
    cmp r1, #0
    bEQ end
    b check
end:
.end
