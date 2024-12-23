.data

lower_case: .string "abcde"

.text
# Convert lowercase to uppercase by subtracting 32

la x5, lower_case


lb x6, 0(x5)
addi x6, x6, -32
lb x7, 1(x5)
addi x7, x7, -32
lb x8, 2(x5)
addi x8, x8, -32
lb x9, 3(x5)
addi x9, x9, -32
lb x12, 4(x5)
addi x12, x12, -32


sb x6, 0(x5)
sb x7, 1(x5)
sb x8, 2(x5)
sb x9, 3(x5)
sb x12, 4(x5)

#print
la a1, lower_case
li a0, 4
ecall

# Exit
li a0, 10
ecall