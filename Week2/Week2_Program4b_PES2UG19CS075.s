.data
A: .hword 3
B: .hword 4
C: .hword 0

.text
ldrh R0, =A
ldrh R1, =B
ldrh R2, =C
ldrh R3, [R1]
ldrh R4, [R0]
add R5, R3, R4
strh R5, [R2]

.end
