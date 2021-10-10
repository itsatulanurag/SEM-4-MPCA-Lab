.text
  mov r0, #0
  led:
    swi 0x201
    add r0, r0, #1
    ldr r1, =200000
    delay:
      sub r1, r1, #1
      cmp r1, #0
      bNE delay
    cmp r0, #3
    movGT r0, #0
  b led
  swi 0x011