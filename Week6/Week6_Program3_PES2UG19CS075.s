.data
  str: .asciz "ATUL ANURAG\n"

.text
  swi 0x206
  mov r0, #10
  mov r1, #5
  ldr r2, =str
  loop:
    swi 0x206
    swi 0x204
    cmp r0, #0
    subNE r0, r0, #1
    bNE loop
    movEQ pc, lr
  swi 0x011