# Generated by mc: 8:09 5.6.2021.
#
	.data
	.text
main:	addi	$sp, $sp, -4		# push fp
	sw	$fp, 0($sp)
	move	$fp, $sp		# fp <- sp
	addi	$sp, $sp, -32		# allocate locals
	li	$v0, 2
	sw	$v0, -4($fp)
	li	$v0, 2
	sw	$v0, -8($fp)
	lw	$t1, -4($fp)
	addi	$sp, $sp, -4		# push 
	sw	$t1, 0($sp)
	lw	$t1, -8($fp)
	addi	$sp, $sp, -4		# push 
	sw	$t1, 0($sp)
	addi	$sp, $sp, -4		# push 
	sw	$ra, 0($sp)
	jal	g
	lw	$ra, 0($sp)		# pop ra
	addi	$sp, $sp, 4
	addi	$sp, $sp, 8		# deallocate args
	sw	$v0, -12($fp)
	li	$v0, 2
	sw	$v0, -16($fp)
	li	$v0, 3
	sw	$v0, -20($fp)
	lw	$t1, -16($fp)
	addi	$sp, $sp, -4		# push 
	sw	$t1, 0($sp)
	lw	$t1, -20($fp)
	addi	$sp, $sp, -4		# push 
	sw	$t1, 0($sp)
	addi	$sp, $sp, -4		# push 
	sw	$ra, 0($sp)
	jal	g
	lw	$ra, 0($sp)		# pop ra
	addi	$sp, $sp, 4
	addi	$sp, $sp, 8		# deallocate args
	sw	$v0, -24($fp)
	lw	$t1, -12($fp)
	lw	$t2, -24($fp)
	add	$v0, $t1, $t2
	sw	$v0, -28($fp)
	lw	$v0, -28($fp)
	sw	$v0, -32($fp)
	lw	$v0, -32($fp)
	move	$sp, $fp
	lw	$fp, 0($sp)		# pop restore fp
	addi	$sp, $sp, 4
	li	$v0, 17			# $v0 gets exit code for syscall
	syscall				# Exit here
f:	addi	$sp, $sp, -4		# push fp
	sw	$fp, 0($sp)
	move	$fp, $sp		# fp <- sp
	addi	$sp, $sp, -4		# allocate locals
	lw	$v0, 8($fp)
	sw	$v0, -4($fp)
	lw	$v0, -4($fp)
	move	$sp, $fp
	lw	$fp, 0($sp)		# pop restore fp
	addi	$sp, $sp, 4
	jr	$ra				# return
g:	addi	$sp, $sp, -4		# push fp
	sw	$fp, 0($sp)
	move	$fp, $sp		# fp <- sp
	addi	$sp, $sp, -104		# allocate locals
	li	$v0, 3
	sw	$v0, -4($fp)
	lw	$t1, 8($fp)
	lw	$t2, -4($fp)
	li	$v0, 0
	sub	$t1, $t1, $t2		# ==
	li	$t2, 1
	movz	$v0, $t2, $t1
	sw	$v0, -8($fp)
	lw	$v0, -8($fp)
	beqz	$v0, l52		# JmpZero
	li	$v0, 0
	sw	$v0, -12($fp)
	lw	$v0, -12($fp)
	j	l53				# Jmp
l52:	nop
	li	$v0, 0
	sw	$v0, -24($fp)
	li	$v0, 0
	sw	$v0, -60($fp)
	li	$v0, 0
	sw	$v0, -24($fp)
	li	$v0, 1
	sw	$v0, -60($fp)
l57:	nop
	lw	$v0, -60($fp)
	beqz	$v0, l55		# JmpZero
	li	$v0, 1
	sw	$v0, -36($fp)
	j	l56				# Jmp
l55:	nop
	lw	$v0, -60($fp)
	sw	$v0, -36($fp)
l56:	nop
	lw	$v0, -36($fp)
	beqz	$v0, l58		# JmpZero
	li	$v0, 0
	sw	$v0, -52($fp)
	li	$v0, 1
	sw	$v0, -44($fp)
	lw	$t1, -24($fp)
	lw	$t2, -44($fp)
	add	$v0, $t1, $t2
	sw	$v0, -48($fp)
	lw	$v0, -48($fp)
	sw	$v0, -52($fp)
	lw	$v0, -24($fp)
	sw	$v0, -56($fp)
	lw	$a0, -56($fp)
	li	$v0, 1			# $v0 -> print int code for syscall
	syscall				# print
	li	$v0, 0
	sw	$v0, -60($fp)
	j	l57				# Jmp
l58:	nop
	li	$v0, 1
	beqz	$v0, l60		# JmpZero
	li	$v0, 3
	sw	$v0, -64($fp)
	li	$v0, 12
	sw	$v0, -68($fp)
	lw	$t1, -64($fp)
	lw	$t2, -68($fp)
	mul	$v0, $t1, $t2
	sw	$v0, -72($fp)
	lw	$v0, -72($fp)
	sw	$v0, -76($fp)
	lw	$v0, -76($fp)
	j	l61				# Jmp
l60:	nop
	li	$v0, 3
	sw	$v0, -80($fp)
	lw	$t1, -80($fp)
	addi	$sp, $sp, -4		# push 
	sw	$t1, 0($sp)
	addi	$sp, $sp, -4		# push 
	sw	$ra, 0($sp)
	jal	f
	lw	$ra, 0($sp)		# pop ra
	addi	$sp, $sp, 4
	addi	$sp, $sp, 4		# deallocate args
	sw	$v0, -84($fp)
	li	$v0, 2
	sw	$v0, -88($fp)
	li	$v0, 3
	sw	$v0, -92($fp)
	lw	$t1, -88($fp)
	addi	$sp, $sp, -4		# push 
	sw	$t1, 0($sp)
	lw	$t1, -92($fp)
	addi	$sp, $sp, -4		# push 
	sw	$t1, 0($sp)
	addi	$sp, $sp, -4		# push 
	sw	$ra, 0($sp)
	jal	g
	lw	$ra, 0($sp)		# pop ra
	addi	$sp, $sp, 4
	addi	$sp, $sp, 8		# deallocate args
	sw	$v0, -96($fp)
	lw	$t1, -84($fp)
	lw	$t2, -96($fp)
	add	$v0, $t1, $t2
	sw	$v0, -100($fp)
	lw	$v0, -100($fp)
	sw	$v0, -104($fp)
	lw	$v0, -104($fp)
l61:	nop
l53:	nop
	move	$sp, $fp
	lw	$fp, 0($sp)		# pop restore fp
	addi	$sp, $sp, 4
	jr	$ra				# return
