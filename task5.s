.data

char: .string "abcde"

.text

la x3, char
lw x4, 0(x3)
lb x12, 4(x3)



srli x5, x4, 24

srli x6, x4, 16
slli x6, x6, 24
srli x6, x6, 24

srli x7, x4, 8
slli x7, x7, 24
srli x7, x7, 24


slli x8, x4, 24
srli x8, x8, 24

# add x15, x5, x6
# add x15, x15, x7
# add x15, x15, x8
# add x15, x15, x9

sb x12, 0(x3)
sb x5, 1(x3)
sb x6, 2(x3)
sb x7, 3(x3)
sb x8, 4(x3)

#print
la a1, char
li a0, 4
ecall

# Exit the program
li a0, 10
# System call for exit
ecall