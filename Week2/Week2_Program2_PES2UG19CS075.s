.text

mov r0, #3
mov r1, #5
cmp r0, r1      @unequal case

bEQ L1

sub r2,r1,r0
b end

L1:
add r2,r1,r0

end:
swi 0x011
.end