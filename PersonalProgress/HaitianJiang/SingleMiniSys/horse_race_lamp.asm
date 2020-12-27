# 单周期CPU 跑马灯设计
##########################################
######     以下是伪码语言描述       ######
##########################################
#	初始化led灯的值
#	while(true)
#   {
#		加载拨码开关数据 data_switch
#		case(data_switch)
#			1:
#				循环左移效果	
#
#		endcase
#   }

# write to led, initial LED
ori $5,$0,0xfffffc60
li  $16,0x924924		# 1001 0010 0100 1001 0010 0100
sw  $16,($5)
addiu $5,$5,2
srl $16,$16,16
sll $16,$16,8
sw  $16,($5)


s:
# read from toggle switch
ori $1,$0,0xfffffc70
#ori $1,$0,0
lw  $2,($1)
addiu $1,$1,2
lw	$3,($1)
sll $3,$3,16
addu $4,$2,$3

li $28,1
bne $4,$28,end	# if the value of toggle switch is not equal 1, reload this value

s1:	# switch 1: # 1001 0010 0100 1001 0010 0100
# 移位，跑马灯
sll $16,$16,2   # 0100 1001 0010 0100 1001 0000  
ori $16,$16,2	# 0100 1001 0010 0100 1001 0010
# write to LED
ori $5,$0,0xfffffc60
add $17,$16,0
sw  $17,($5)
addiu $5,$5,2
srl $17,$17,16
sll $17,$17,8
sw  $17,($5)

# wait
li $9,10000000
wait:
subiu $9,$9,1
bne $9,$0,wait

end:
beq $0,$0,s