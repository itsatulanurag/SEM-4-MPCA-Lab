.text
MOV r1, #0x0f
ANDS r2, r1, #0x01

BEQ L1            @checks if r1 is even
B L2              @else

L1:               @this block is executed if r1 is even
MOV r0, #0x00
SWI 0x011
B end             @ends the program if L1 is executed

L2:               @this block is executed if r1 is odd
MOV r0, #0xFF
SWI 0x011

end:
.end
