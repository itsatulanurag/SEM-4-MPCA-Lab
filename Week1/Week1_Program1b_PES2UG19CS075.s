.text
MOV r0, #0x0f
MOV r1, #0x0a
ADD r2, r0, r1      @sum of r0 and r1 stored in r2
SUB r2, r0, r1      @difference of r0 and r1 stored in r2
SWI 0x011
.end
