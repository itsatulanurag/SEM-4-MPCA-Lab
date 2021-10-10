.text
MOV r0, #0x0a
MOV r1, #0x0f
AND r2, r0, r1
ORR r3, r0, r1
EOR r4, r0, r1
MVN r5, r0
SWI 0x011
.end
