.data
  start:
    .word 0xed, 0x60, 0xce, 0xfa, 0x63, 0xab, 0xaf, 0xe0, 0xef, 0xe3, 0xe7, 0x2f, 0x8d, 0x6e, 0x8f
  end:
    .word 0x87

.text
  mov r0, #0
  mov r2, #0
  
  again:
    swi 0x202
    cmp r0, #1
    movEQ r2, #1
    bEQ forward
    cmp r0, #2
    movEQ r2, #2
    bEQ backward
    b again

  forward:
    mov r5, #16
    ldr r1, =start
    next:
      ldrb r0, [r1]
      swi 0x200
      b delay
      first:
        add r1, r1, #4
        sub r5, r5, #1
        cmp r5, #0
        bNE next
    b again

  backward:
    mov r5, #16
    ldr r1, =end
    prev:
      ldrb r0, [r1]
      swi 0x200
      b delay
      second:
        sub r1, r1, #4
        sub r5, r5, #1
        cmp r5, #0
        bNE prev
    b again

delay:
    mov r4, #64000
    count:
      sub r4, r4, #1
      cmp r4, #0
      bNE count
    cmp r2, #1
    bEQ first
    b second