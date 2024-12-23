#Memory
.data

.word 0x12345678

# Reverse Bytes
.text

li x3, 0x10000000
lw x4, 0(x3)   # x4 = 0x12345678

srli x5, x4, 24

srli x6, x4, 16
slli x6, x6, 24
srli x6, x6, 16

srli x7, x4, 8
slli x7, x7, 24
srli x7, x7, 8


slli x8, x4, 24


add x9, x5, x6
add x9, x9, x7
add x9, x9, x8

sw x9, 0(x3)


# Exit the program
li a0, 10
# System call for exit
ecall