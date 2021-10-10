.text
mov r0, #5
add r0, r0, r0, lsl #2
mov r1, r0
mov r0, r0, lsl #3
sub r0, r0, r1
.end
