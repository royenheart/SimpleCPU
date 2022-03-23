	.text
	addiu	$sp,$sp,-32
	sw	$fp,28($sp)
	move	$fp,$sp
	li	$2,10			# 0xa
	sw	$2,8($fp)
	li	$2,10			# 0xa
	sw	$2,12($fp)
	lw	$3,8($fp)
	lw	$2,12($fp)
	addu	$2,$3,$2
	sw	$2,16($fp)
#APP
 # 7 "./test.c" 1
	sw $2, 0($0)
	
 # 0 "" 2
#NO_APP
	sw	$2,16($fp)
	move	$sp,$fp
	lw	$fp,28($sp)
	addiu	$sp,$sp,32
	jr	$31
