.data
A: .word 3
B: .word 4
C: .word 0

.text
ldr R0, =A
ldr R1, =B
ldr R2, =C
ldr R3, [R1]
ldr R4, [R0]
add R5, R3, R4
str R5, [R2]

.end
