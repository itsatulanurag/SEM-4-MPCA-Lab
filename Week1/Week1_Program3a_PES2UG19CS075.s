.text
MOV r0, #0x05
MOV r1, #0x06
MOV r2, #0x07
MOV r3, #0x06
MOV r4, #0x15
ADD r5, r0, r1
ADD r6, r5, r2
ADD r7, r6, r3
ADD r8, r7, r4
SWI 0x011
.end
