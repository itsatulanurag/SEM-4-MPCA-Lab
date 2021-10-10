.text
mov R0, #-5    @case negative
cmp R0, #0

movEQ R1, #1
BEQ end

movMI R1, #3
BMI end

mov R1, #2

end:
SWI 0x011
.end
