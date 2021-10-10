.text
MOV r0, #0x01
MOV r1, #0x02
MOV r2, #0x03
MOV r3, #0x04
MOV r4, #0x05
ADD r5, r0, r1
ADD r6, r5, r2
ADD r7, r6, r3
ADD r8, r7, r4
SWI 0x011
.end
