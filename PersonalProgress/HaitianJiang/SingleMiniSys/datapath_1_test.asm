.data
a: .word 0x64


.text
nop
add $1,$2,$3	# $1 = 2 + 3 = 5
addu $2,$4,$1	# $2 = 4 + 5 = 9
sub $4,$2,$1	# $4 = 9 - 5 = 4
subu $5,$4,$3	# $5 = 4 - 3 = 1

and $6,$7,$8	# $6 = 0111 and 1000 = 0
or $7,$6,$8		# $7 = 0 or 1000 = 8
xor $7,$6,$8	# $7 = 0000 xor 1000 = 1000 = 8
nor $8,$7,$6	# $8 = not (1000 or 0) = 11111111111110111

slt $10,$11,$12	# $10 = 11 < 12 = 1		# Ӧ���ø�����֤���Ժ���˵
sltu $10,$12,$11	# $10 = 12 > 11 = 0

# sllv $12,$5,$13	# $12 = 1101 << 1 = 1101_0 = 1A	��ע��˴��ĵ������⣡ sllv rd,rt,rs��
# srlv $12,$5,$13	# $12 = 1101 >> 1 = 110 = 6
# srav $14,$5,$15	# $14 = 1111 >>> 1 = 111  = 7 Ӧ���ø�����֤���Ժ���˵

# ����3���Ǵ���ģ�����Ӧ�øĵĲ���ʹ�ã������ڲ������߼�
# ����ʹ������˵���߼����� $13 << $5
# ��ʵ�ʵı����� rt = $13��rs = $5������һ���ָ�һ��
# ��ˣ�������ALU������ rt--B��rs--A��Ӧ���� ��B << A���������� A >> B��
sllv $12,$13,$5	# $12 = 1101 << 1 = 1101_0 = 1A	
srlv $12,$13,$5	# $12 = 1101 >> 1 = 110 = 6
srav $14,$15,$5	# $14 = 1111 >>> 1 = 111  = 7 Ӧ���ø�����֤���Ժ���˵

sll $16,$17,2	# $16 = 1_0001 << 2 = 100_0100 = 44	
srl $16,$18,2	# $16 = 1_0010 >> 2 = 0100 = 4
sra $16,$19,2	# Ӧ���ø�����֤���Ժ���˵ $16 = 4

################ I type test #################
addi $17,$7,-1	# $17 = 8 - 1 = 7  ���Է�����չ
addiu $17,$7,-2 # $17 = 8 - 2 = 6
andi  $17,$8,1  # $17 = 1	����zero extension
ori $17,$8,0	# $17 = ffff_fff7 = ffff_fff7
xori $17,$8,15	# $17 = ffff_fff7 xor 0000_000f = ffff_fff8 

lui $17,100	# $17 = ǰ16λ��64_��16λ��0

beq $0,$10,s1	# 0 = 0,jump!
nop
nop
nop

s1:
addi $10,$10,1	# $10 = 1
beq $0,$10,s1	# 0 != 1,don't jump
bne $0,$0,s3	# not jump
bne $0,$10,s2	# 0 != 1,jump
nop
nop
nop


s2:
lw $30,0($0) # $30 = mem[0] = 0x64
sw $10,4($0)	# mem[4] = 0x1
jr $16	# PC = 4

s3:



