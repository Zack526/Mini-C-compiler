# Generated by mc: 8:09 5.6.2021.
#
	.data
	.text
main:	addi	$sp, $sp, -4		# push fp
	sw	$fp, 0($sp)
	move	$fp, $sp		# fp <- sp
	addi	$sp, $sp, -72		# allocate locals
	li	$v0, 7
	sw	$v0, -4($fp)
	lw	$t1, -4($fp)
	addi	$sp, $sp, -4		# push 
	sw	$t1, 0($sp)
	addi	$sp, $sp, -4		# push 
	sw	$ra, 0($sp)
	jal	fact
	lw	$ra, 0($sp)		# pop ra
	addi	$sp, $sp, 4
	addi	$sp, $sp, 4		# deallocate args
	sw	$v0, -8($fp)
	lw	$v0, -8($fp)
	sw	$v0, -12($fp)
	lw	$a0, -12($fp)
	li	$v0, 1			# $v0 -> print int code for syscall
	syscall				# print
	li	$v0, 8
	sw	$v0, -16($fp)
	lw	$t1, -16($fp)
	addi	$sp, $sp, -4		# push 
	sw	$t1, 0($sp)
	addi	$sp, $sp, -4		# push 
	sw	$ra, 0($sp)
	jal	fact
	lw	$ra, 0($sp)		# pop ra
	addi	$sp, $sp, 4
	addi	$sp, $sp, 4		# deallocate args
	sw	$v0, -20($fp)
	lw	$v0, -20($fp)
	sw	$v0, -24($fp)
	lw	$a0, -24($fp)
	li	$v0, 1			# $v0 -> print int code for syscall
	syscall				# print
	li	$v0, 9
	sw	$v0, -28($fp)
	lw	$t1, -28($fp)
	addi	$sp, $sp, -4		# push 
	sw	$t1, 0($sp)
	addi	$sp, $sp, -4		# push 
	sw	$ra, 0($sp)
	jal	fact
	lw	$ra, 0($sp)		# pop ra
	addi	$sp, $sp, 4
	addi	$sp, $sp, 4		# deallocate args
	sw	$v0, -32($fp)
	lw	$v0, -32($fp)
	sw	$v0, -36($fp)
	lw	$a0, -36($fp)
	li	$v0, 1			# $v0 -> print int code for syscall
	syscall				# print
	li	$v0, 10
	sw	$v0, -40($fp)
	lw	$t1, -40($fp)
	addi	$sp, $sp, -4		# push 
	sw	$t1, 0($sp)
	addi	$sp, $sp, -4		# push 
	sw	$ra, 0($sp)
	jal	fact
	lw	$ra, 0($sp)		# pop ra
	addi	$sp, $sp, 4
	addi	$sp, $sp, 4		# deallocate args
	sw	$v0, -44($fp)
	lw	$v0, -44($fp)
	sw	$v0, -48($fp)
	lw	$a0, -48($fp)
	li	$v0, 1			# $v0 -> print int code for syscall
	syscall				# print
	li	$v0, 11
	sw	$v0, -52($fp)
	lw	$t1, -52($fp)
	addi	$sp, $sp, -4		# push 
	sw	$t1, 0($sp)
	addi	$sp, $sp, -4		# push 
	sw	$ra, 0($sp)
	jal	fact
	lw	$ra, 0($sp)		# pop ra
	addi	$sp, $sp, 4
	addi	$sp, $sp, 4		# deallocate args
	sw	$v0, -56($fp)
	lw	$v0, -56($fp)
	sw	$v0, -60($fp)
	lw	$a0, -60($fp)
	li	$v0, 1			# $v0 -> print int code for syscall
	syscall				# print
	li	$v0, 7
	sw	$v0, -64($fp)
	lw	$t1, -64($fp)
	addi	$sp, $sp, -4		# push 
	sw	$t1, 0($sp)
	addi	$sp, $sp, -4		# push 
	sw	$ra, 0($sp)
	jal	fact
	lw	$ra, 0($sp)		# pop ra
	addi	$sp, $sp, 4
	addi	$sp, $sp, 4		# deallocate args
	sw	$v0, -68($fp)
	lw	$v0, -68($fp)
	sw	$v0, -72($fp)
	lw	$v0, -72($fp)
	move	$sp, $fp
	lw	$fp, 0($sp)		# pop restore fp
	addi	$sp, $sp, 4
	li	$v0, 17			# $v0 gets exit code for syscall
	syscall				# Exit here
fact:	addi	$sp, $sp, -4		# push fp
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
	beqz	$v0, l790		# JmpZero
	li	$v0, 1
	sw	$v0, -12($fp)
	lw	$v0, -12($fp)
	j	l791				# Jmp
l790:	nop
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
	jal	fact
	lw	$ra, 0($sp)		# pop ra
	addi	$sp, $sp, 4
	addi	$sp, $sp, 4		# deallocate args
	sw	$v0, -24($fp)
	lw	$t1, -24($fp)
	lw	$t2, 8($fp)
	mul	$v0, $t1, $t2
	sw	$v0, -28($fp)
	lw	$v0, -28($fp)
	sw	$v0, -32($fp)
	lw	$v0, -32($fp)
l791:	nop
	move	$sp, $fp
	lw	$fp, 0($sp)		# pop restore fp
	addi	$sp, $sp, 4
	jr	$ra				# return
