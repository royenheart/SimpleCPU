	.text
	addiu	$sp,$sp,-48
	sw	$fp,44($sp)
	move	$fp,$sp
	sw	$0,20($fp)
	li	$2,10			# 0xa
	sw	$2,24($fp)
	sw	$0,28($fp)
#APP
 # 9 "./minimum.c" 1
	lw $3, 0($0)
	lw $2, 1($0)
	
 # 0 "" 2
#NO_APP
	sw	$3,8($fp)
	sw	$2,12($fp)
	sw	$0,16($fp)
	j	$L2
$L3:
	lw	$3,8($fp)
	lw	$2,12($fp)
	addu	$2,$3,$2
	sw	$2,32($fp)
#APP
 # 20 "./minimum.c" 1
	sw $2, 2($0)
 # 0 "" 2
#NO_APP
	sw	$2,32($fp)
	lw	$2,12($fp)
	sw	$2,8($fp)
	lw	$2,32($fp)
	sw	$2,12($fp)
	lw	$2,16($fp)
	addiu	$2,$2,1
	sw	$2,16($fp)
$L2:
	lw	$3,16($fp)
	lw	$2,24($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L3
	lw	$3,8($fp)
	lw	$2,12($fp)
	and	$2,$3,$2
	sw	$2,8($fp)
	lw	$3,8($fp)
	lw	$2,12($fp)
	or	$2,$3,$2
	sw	$2,8($fp)
	lw	$3,8($fp)
	lw	$2,12($fp)
	xor	$2,$3,$2
	sw	$2,8($fp)
	lw	$3,8($fp)
	lw	$2,28($fp)
	slt	$2,$2,$3
	beq	$2,$0,$L5
	sw	$0,12($fp)
$L5:
	move	$sp,$fp
	lw	$fp,44($sp)
	addiu	$sp,$sp,48
	jr	$31
