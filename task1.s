# the memory
.data

.word 0x12345678
.word 0x87654321
 
 #----
.text
li x3, 0x10000000

# load
lw x5, 0(x3)
lw x6, 4(x3)

#add
add x7, x5, x6

#store in 0x10000008
sw x7, 8(x3)

#exit
li 

ecall