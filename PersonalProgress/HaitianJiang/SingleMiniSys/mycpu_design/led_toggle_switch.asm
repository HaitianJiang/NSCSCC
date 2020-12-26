.data 
	a: .half 2000
	c: .byte 100

.text
s:
# read from toggle switch
ori $1,$0,0xfffffc70
#ori $1,$0,0
lw  $2,($1)
addiu $1,$1,2
lw	$3,($1)
sll $3,$3,16
addu $4,$2,$3

# write to led
ori $5,$0,0xfffffc60
sw  $4,($5)
addiu $5,$5,2
srl $4,$4,16
sw  $4,($5)
beq $0,$0,s