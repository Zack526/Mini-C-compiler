# Generated by mc: 8:09 5.6.2021.
#
	.data
	.text
main:	addi	$sp, $sp, -4		# push fp
	sw	$fp, 0($sp)
	move	$fp, $sp		# fp <- sp
	addi	$sp, $sp, -12		# allocate locals
	li	$v0, 13
	sw	$v0, -4($fp)
	li	$v0, 7
	sw	$v0, -8($fp)
	lw	$t1, -4($fp)
	addi	$sp, $sp, -4		# push 
	sw	$t1, 0($sp)
	lw	$t1, -8($fp)
	addi	$sp, $sp, -4		# push 
	sw	$t1, 0($sp)
	addi	$sp, $sp, -4		# push 
	sw	$ra, 0($sp)
	jal	mod
	lw	$ra, 0($sp)		# pop ra
	addi	$sp, $sp, 4
	addi	$sp, $sp, 8		# deallocate args
	li	$v0, 1
	sw	$v0, -12($fp)
	lw	$v0, -12($fp)
	move	$sp, $fp
	lw	$fp, 0($sp)		# pop restore fp
	addi	$sp, $sp, 4
	li	$v0, 17			# $v0 gets exit code for syscall
	syscall				# Exit here
mod:	addi	$sp, $sp, -4		# push fp
	sw	$fp, 0($sp)
	move	$fp, $sp		# fp <- sp
	addi	$sp, $sp, -32		# allocate locals
	li	$v0, 0
	sw	$v0, -4($fp)
	lw	$t1, 8($fp)
	lw	$t2, -4($fp)
	slt	$v0, $t1, $t2
	sw	$v0, -8($fp)
	lw	$v0, -8($fp)
	beqz	$v0, l756		# JmpZero
	li	$v0, 0
	sw	$v0, -12($fp)
	lw	$v0, -12($fp)
	j	l757				# Jmp
l756:	nop
	lw	$v0, 12($fp)
	sw	$v0, -16($fp)
	lw	$a0, -16($fp)
	li	$v0, 1			# $v0 -> print int code for syscall
	syscall				# print
l757:	nop
l760:	nop
	lw	$t1, 12($fp)
	lw	$t2, 8($fp)
	sub	$v0, $t2, $t1		# >=
	slti	$v0, $v0, 1
	sw	$v0, -20($fp)
	lw	$v0, -20($fp)
	beqz	$v0, l761		# JmpZero
	lw	$t1, 12($fp)
	lw	$t2, 8($fp)
	sub	$v0, $t1, $t2
	sw	$v0, -24($fp)
	lw	$v0, -24($fp)
	sw	$v0, 12($fp)
	j	l760				# Jmp
l761:	nop
	lw	$v0, 12($fp)
	sw	$v0, -28($fp)
	lw	$a0, -28($fp)
	li	$v0, 1			# $v0 -> print int code for syscall
	syscall				# print
	lw	$v0, 12($fp)
	sw	$v0, -32($fp)
	lw	$v0, -32($fp)
	move	$sp, $fp
	lw	$fp, 0($sp)		# pop restore fp
	addi	$sp, $sp, 4
	jr	$ra				# return
