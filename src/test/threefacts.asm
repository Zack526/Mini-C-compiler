# Generated by mc: 8:09 5.6.2021.
#
	.data
	.text
main:	addi	$sp, $sp, -4		# push fp
	sw	$fp, 0($sp)
	move	$fp, $sp		# fp <- sp
	addi	$sp, $sp, -40		# allocate locals
	li	$v0, 6
	sw	$v0, -4($fp)
	lw	$t1, -4($fp)
	addi	$sp, $sp, -4		# push 
	sw	$t1, 0($sp)
	addi	$sp, $sp, -4		# push 
	sw	$ra, 0($sp)
	jal	ifact
	lw	$ra, 0($sp)		# pop ra
	addi	$sp, $sp, 4
	addi	$sp, $sp, 4		# deallocate args
	sw	$v0, -8($fp)
	lw	$v0, -8($fp)
	sw	$v0, -12($fp)
	lw	$a0, -12($fp)
	li	$v0, 1			# $v0 -> print int code for syscall
	syscall				# print
	li	$v0, 6
	sw	$v0, -16($fp)
	lw	$t1, -16($fp)
	addi	$sp, $sp, -4		# push 
	sw	$t1, 0($sp)
	addi	$sp, $sp, -4		# push 
	sw	$ra, 0($sp)
	jal	rfact
	lw	$ra, 0($sp)		# pop ra
	addi	$sp, $sp, 4
	addi	$sp, $sp, 4		# deallocate args
	sw	$v0, -20($fp)
	lw	$v0, -20($fp)
	sw	$v0, -24($fp)
	lw	$a0, -24($fp)
	li	$v0, 1			# $v0 -> print int code for syscall
	syscall				# print
	li	$v0, 6
	sw	$v0, -28($fp)
	lw	$t1, -28($fp)
	addi	$sp, $sp, -4		# push 
	sw	$t1, 0($sp)
	addi	$sp, $sp, -4		# push 
	sw	$ra, 0($sp)
	jal	condfact
	lw	$ra, 0($sp)		# pop ra
	addi	$sp, $sp, 4
	addi	$sp, $sp, 4		# deallocate args
	sw	$v0, -32($fp)
	lw	$v0, -32($fp)
	sw	$v0, -36($fp)
	lw	$a0, -36($fp)
	li	$v0, 1			# $v0 -> print int code for syscall
	syscall				# print
	li	$v0, 0
	sw	$v0, -40($fp)
	lw	$v0, -40($fp)
	move	$sp, $fp
	lw	$fp, 0($sp)		# pop restore fp
	addi	$sp, $sp, 4
	li	$v0, 17			# $v0 gets exit code for syscall
	syscall				# Exit here
ifact:	addi	$sp, $sp, -4		# push fp
	sw	$fp, 0($sp)
	move	$fp, $sp		# fp <- sp
	addi	$sp, $sp, -36		# allocate locals
	li	$v0, 0
	sw	$v0, -24($fp)
	li	$v0, 1
	sw	$v0, -24($fp)
l858:	nop
	li	$v0, 0
	sw	$v0, -12($fp)
	lw	$t1, 8($fp)
	lw	$t2, -12($fp)
	slt	$v0, $t2, $t1		# >
	sw	$v0, -16($fp)
	lw	$v0, -16($fp)
	beqz	$v0, l859		# JmpZero
	lw	$t1, -24($fp)
	lw	$t2, 8($fp)
	mul	$v0, $t1, $t2
	sw	$v0, -20($fp)
	lw	$v0, -20($fp)
	sw	$v0, -24($fp)
	li	$v0, 1
	sw	$v0, -28($fp)
	lw	$t1, 8($fp)
	lw	$t2, -28($fp)
	sub	$v0, $t1, $t2
	sw	$v0, -32($fp)
	lw	$v0, -32($fp)
	sw	$v0, 8($fp)
	j	l858				# Jmp
l859:	nop
	lw	$v0, -24($fp)
	sw	$v0, -36($fp)
	lw	$v0, -36($fp)
	move	$sp, $fp
	lw	$fp, 0($sp)		# pop restore fp
	addi	$sp, $sp, 4
	jr	$ra				# return
rfact:	addi	$sp, $sp, -4		# push fp
	sw	$fp, 0($sp)
	move	$fp, $sp		# fp <- sp
	addi	$sp, $sp, -32		# allocate locals
	li	$v0, 0
	sw	$v0, -4($fp)
	lw	$t1, 8($fp)
	lw	$t2, -4($fp)
	li	$v0, 0
	sub	$t1, $t1, $t2		# ==
	li	$t2, 1
	movz	$v0, $t2, $t1
	sw	$v0, -8($fp)
	lw	$v0, -8($fp)
	beqz	$v0, l861		# JmpZero
	li	$v0, 1
	sw	$v0, -12($fp)
	lw	$v0, -12($fp)
	j	l862				# Jmp
l861:	nop
	li	$v0, 1
	sw	$v0, -16($fp)
	lw	$t1, 8($fp)
	lw	$t2, -16($fp)
	sub	$v0, $t1, $t2
	sw	$v0, -20($fp)
	lw	$t1, -20($fp)
	addi	$sp, $sp, -4		# push 
	sw	$t1, 0($sp)
	addi	$sp, $sp, -4		# push 
	sw	$ra, 0($sp)
	jal	rfact
	lw	$ra, 0($sp)		# pop ra
	addi	$sp, $sp, 4
	addi	$sp, $sp, 4		# deallocate args
	sw	$v0, -24($fp)
	lw	$t1, 8($fp)
	lw	$t2, -24($fp)
	mul	$v0, $t1, $t2
	sw	$v0, -28($fp)
	lw	$v0, -28($fp)
	sw	$v0, -32($fp)
	lw	$v0, -32($fp)
l862:	nop
	move	$sp, $fp
	lw	$fp, 0($sp)		# pop restore fp
	addi	$sp, $sp, 4
	jr	$ra				# return
condfact:	addi	$sp, $sp, -4		# push fp
	sw	$fp, 0($sp)
	move	$fp, $sp		# fp <- sp
	addi	$sp, $sp, -36		# allocate locals
	li	$v0, 0
	sw	$v0, -4($fp)
	lw	$t1, 8($fp)
	lw	$t2, -4($fp)
	li	$v0, 0
	sub	$t1, $t1, $t2		# ==
	li	$t2, 1
	movz	$v0, $t2, $t1
	sw	$v0, -8($fp)
	lw	$v0, -8($fp)
	beqz	$v0, l866		# JmpZero
	li	$v0, 1
	sw	$v0, -32($fp)
	j	l867				# Jmp
l866:	nop
	li	$v0, 1
	sw	$v0, -16($fp)
	lw	$t1, 8($fp)
	lw	$t2, -16($fp)
	sub	$v0, $t1, $t2
	sw	$v0, -20($fp)
	lw	$t1, -20($fp)
	addi	$sp, $sp, -4		# push 
	sw	$t1, 0($sp)
	addi	$sp, $sp, -4		# push 
	sw	$ra, 0($sp)
	jal	condfact
	lw	$ra, 0($sp)		# pop ra
	addi	$sp, $sp, 4
	addi	$sp, $sp, 4		# deallocate args
	sw	$v0, -24($fp)
	lw	$t1, 8($fp)
	lw	$t2, -24($fp)
	mul	$v0, $t1, $t2
	sw	$v0, -28($fp)
	lw	$v0, -28($fp)
	sw	$v0, -32($fp)
l867:	nop
	lw	$v0, -32($fp)
	sw	$v0, -36($fp)
	lw	$v0, -36($fp)
	move	$sp, $fp
	lw	$fp, 0($sp)		# pop restore fp
	addi	$sp, $sp, 4
	jr	$ra				# return