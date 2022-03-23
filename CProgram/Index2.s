	.text
	addiu	$sp,$sp,-40
	sw	$fp,36($sp)
	move	$fp,$sp
	li	$2,5			# 0x5
	sw	$2,16($fp)
	li	$2,2			# 0x2
	sw	$2,8($fp)
	li	$2,10			# 0xa
	sw	$2,20($fp)
	li	$2,2			# 0x2
	sw	$2,24($fp)
	lw	$3,20($fp)
	lw	$2,24($fp)
	subu	$2,$3,$2
	sw	$2,20($fp)
	li	$2,1			# 0x1
	sw	$2,12($fp)
	j	$L2
$L3:
	lw	$3,8($fp)
	lw	$2,24($fp)
	mul	$2,$3,$2
	sw	$2,8($fp)
#APP
 # 10 "./Index2.c" 1
	sw $2, 2($0)
 # 0 "" 2
#NO_APP
	sw	$2,8($fp)
	lw	$2,12($fp)
	addiu	$2,$2,1
	sw	$2,12($fp)
$L2:
	lw	$3,12($fp)
	lw	$2,16($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L3
	move	$sp,$fp
	lw	$fp,36($sp)
	addiu	$sp,$sp,40
	jr	$31
