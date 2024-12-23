.data

Byte_Array: .byte 0x12 , 0x34, 0x56, 0x78, 0x90

.text
# location for word array
li x16, 0x10000008
la x4, Byte_Array

lb x5, 0(x4)
lb x6, 1(x4)
lb x7, 2(x4)
lb x8, 3(x4)
lb x9, 4(x4)


andi x9, x9, 0xFF

sw x5, 0(x16)
sw x6, 4(x16)
sw x7, 8(x16)
sw x8, 12(x16)
sw x9, 16(x16)

# Exit the program
li a0, 10
# System call for exit
ecall