# Generated by mc: 8:09 5.6.2021.
#
	.data
	.text
main:	addi	$sp, $sp, -4		# push fp
	sw	$fp, 0($sp)
	move	$fp, $sp		# fp <- sp
	addi	$sp, $sp, -20		# allocate locals
	li	$v0, 0
	sw	$v0, -16($fp)
	li	$v0, 1638
	sw	$v0, -8($fp)
	lw	$t1, -8($fp)
	addi	$sp, $sp, -4		# push 
	sw	$t1, 0($sp)
	addi	$sp, $sp, -4		# push 
	sw	$ra, 0($sp)
	jal	totient
	lw	$ra, 0($sp)		# pop ra
	addi	$sp, $sp, 4
	addi	$sp, $sp, 4		# deallocate args
	sw	$v0, -12($fp)
	lw	$v0, -12($fp)
	sw	$v0, -16($fp)
	lw	$v0, -16($fp)
	sw	$v0, -20($fp)
	lw	$a0, -20($fp)
	li	$v0, 1			# $v0 -> print int code for syscall
	syscall				# print
	move	$sp, $fp
	lw	$fp, 0($sp)		# pop restore fp
	addi	$sp, $sp, 4
	li	$v0, 17			# $v0 gets exit code for syscall
	syscall				# Exit here
mod:	addi	$sp, $sp, -4		# push fp
	sw	$fp, 0($sp)
	move	$fp, $sp		# fp <- sp
	addi	$sp, $sp, -24		# allocate locals
	li	$v0, 0
	sw	$v0, -4($fp)
	lw	$t1, 8($fp)
	lw	$t2, -4($fp)
	slt	$v0, $t1, $t2
	sw	$v0, -8($fp)
	lw	$v0, -8($fp)
	beqz	$v0, l701		# JmpZero
	li	$v0, 0
	sw	$v0, -12($fp)
	lw	$v0, -12($fp)
	j	l702				# Jmp
l701:	nop
l703:	nop
	lw	$t1, 12($fp)
	lw	$t2, 8($fp)
	sub	$v0, $t2, $t1		# >=
	slti	$v0, $v0, 1
	sw	$v0, -16($fp)
	lw	$v0, -16($fp)
	beqz	$v0, l704		# JmpZero
	lw	$t1, 12($fp)
	lw	$t2, 8($fp)
	sub	$v0, $t1, $t2
	sw	$v0, -20($fp)
	lw	$v0, -20($fp)
	sw	$v0, 12($fp)
	j	l703				# Jmp
l704:	nop
l702:	nop
	lw	$v0, 12($fp)
	sw	$v0, -24($fp)
	lw	$v0, -24($fp)
	move	$sp, $fp
	lw	$fp, 0($sp)		# pop restore fp
	addi	$sp, $sp, 4
	jr	$ra				# return
abs:	addi	$sp, $sp, -4		# push fp
	sw	$fp, 0($sp)
	move	$fp, $sp		# fp <- sp
	addi	$sp, $sp, -24		# allocate locals
	li	$v0, 0
	sw	$v0, -4($fp)
	lw	$t1, 8($fp)
	lw	$t2, -4($fp)
	slt	$v0, $t1, $t2
	sw	$v0, -8($fp)
	lw	$v0, -8($fp)
	beqz	$v0, l707		# JmpZero
	li	$v0, 0
	sw	$v0, -12($fp)
	lw	$t1, -12($fp)
	lw	$t2, 8($fp)
	sub	$v0, $t1, $t2
	sw	$v0, -16($fp)
	lw	$v0, -16($fp)
	sw	$v0, -20($fp)
	lw	$v0, -20($fp)
	j	l708				# Jmp
l707:	nop
	lw	$v0, 8($fp)
	sw	$v0, -24($fp)
	lw	$v0, -24($fp)
l708:	nop
	move	$sp, $fp
	lw	$fp, 0($sp)		# pop restore fp
	addi	$sp, $sp, 4
	jr	$ra				# return
gcd:	addi	$sp, $sp, -4		# push fp
	sw	$fp, 0($sp)
	move	$fp, $sp		# fp <- sp
	addi	$sp, $sp, -68		# allocate locals
	lw	$t1, 12($fp)
	addi	$sp, $sp, -4		# push 
	sw	$t1, 0($sp)
	addi	$sp, $sp, -4		# push 
	sw	$ra, 0($sp)
	jal	abs
	lw	$ra, 0($sp)		# pop ra
	addi	$sp, $sp, 4
	addi	$sp, $sp, 4		# deallocate args
	sw	$v0, -4($fp)
	lw	$v0, -4($fp)
	sw	$v0, 12($fp)
	lw	$t1, 8($fp)
	addi	$sp, $sp, -4		# push 
	sw	$t1, 0($sp)
	addi	$sp, $sp, -4		# push 
	sw	$ra, 0($sp)
	jal	abs
	lw	$ra, 0($sp)		# pop ra
	addi	$sp, $sp, 4
	addi	$sp, $sp, 4		# deallocate args
	sw	$v0, -8($fp)
	lw	$v0, -8($fp)
	sw	$v0, 8($fp)
	li	$v0, 0
	sw	$v0, -12($fp)
	lw	$t1, 12($fp)
	lw	$t2, -12($fp)
	li	$v0, 0
	sub	$t1, $t1, $t2		# ==
	li	$t2, 1
	movz	$v0, $t2, $t1
	sw	$v0, -16($fp)
	lw	$v0, -16($fp)
	beqz	$v0, l712		# JmpZero
	lw	$v0, -16($fp)
	sw	$v0, -32($fp)
	j	l713				# Jmp
l712:	nop
	li	$v0, 0
	sw	$v0, -24($fp)
	lw	$t1, 8($fp)
	lw	$t2, -24($fp)
	li	$v0, 0
	sub	$t1, $t1, $t2		# ==
	li	$t2, 1
	movz	$v0, $t2, $t1
	sw	$v0, -28($fp)
	lw	$v0, -28($fp)
	sw	$v0, -32($fp)
l713:	nop
	lw	$v0, -32($fp)
	beqz	$v0, l714		# JmpZero
	lw	$t1, 12($fp)
	lw	$t2, 8($fp)
	add	$v0, $t1, $t2
	sw	$v0, -36($fp)
	lw	$v0, -36($fp)
	sw	$v0, -40($fp)
	lw	$v0, -40($fp)
	j	l715				# Jmp
l714:	nop
	lw	$t1, 8($fp)
	lw	$t2, 12($fp)
	slt	$v0, $t2, $t1		# >
	sw	$v0, -44($fp)
	lw	$v0, -44($fp)
	beqz	$v0, l716		# JmpZero
	lw	$t1, 8($fp)
	addi	$sp, $sp, -4		# push 
	sw	$t1, 0($sp)
	lw	$t1, 12($fp)
	addi	$sp, $sp, -4		# push 
	sw	$t1, 0($sp)
	addi	$sp, $sp, -4		# push 
	sw	$ra, 0($sp)
	jal	mod
	lw	$ra, 0($sp)		# pop ra
	addi	$sp, $sp, 4
	addi	$sp, $sp, 8		# deallocate args
	sw	$v0, -48($fp)
	lw	$t1, 12($fp)
	addi	$sp, $sp, -4		# push 
	sw	$t1, 0($sp)
	lw	$t1, -48($fp)
	addi	$sp, $sp, -4		# push 
	sw	$t1, 0($sp)
	addi	$sp, $sp, -4		# push 
	sw	$ra, 0($sp)
	jal	gcd
	lw	$ra, 0($sp)		# pop ra
	addi	$sp, $sp, 4
	addi	$sp, $sp, 8		# deallocate args
	sw	$v0, -52($fp)
	lw	$v0, -52($fp)
	sw	$v0, -56($fp)
	lw	$v0, -56($fp)
	j	l717				# Jmp
l716:	nop
	lw	$t1, 12($fp)
	addi	$sp, $sp, -4		# push 
	sw	$t1, 0($sp)
	lw	$t1, 8($fp)
	addi	$sp, $sp, -4		# push 
	sw	$t1, 0($sp)
	addi	$sp, $sp, -4		# push 
	sw	$ra, 0($sp)
	jal	mod
	lw	$ra, 0($sp)		# pop ra
	addi	$sp, $sp, 4
	addi	$sp, $sp, 8		# deallocate args
	sw	$v0, -60($fp)
	lw	$t1, -60($fp)
	addi	$sp, $sp, -4		# push 
	sw	$t1, 0($sp)
	lw	$t1, 8($fp)
	addi	$sp, $sp, -4		# push 
	sw	$t1, 0($sp)
	addi	$sp, $sp, -4		# push 
	sw	$ra, 0($sp)
	jal	gcd
	lw	$ra, 0($sp)		# pop ra
	addi	$sp, $sp, 4
	addi	$sp, $sp, 8		# deallocate args
	sw	$v0, -64($fp)
	lw	$v0, -64($fp)
	sw	$v0, -68($fp)
	lw	$v0, -68($fp)
l717:	nop
l715:	nop
	move	$sp, $fp
	lw	$fp, 0($sp)		# pop restore fp
	addi	$sp, $sp, 4
	jr	$ra				# return
totient:	addi	$sp, $sp, -4		# push fp
	sw	$fp, 0($sp)
	move	$fp, $sp		# fp <- sp
	addi	$sp, $sp, -56		# allocate locals
	li	$v0, 0
	sw	$v0, -52($fp)
	li	$v0, 0
	sw	$v0, -24($fp)
l721:	nop
	lw	$t1, -24($fp)
	lw	$t2, 8($fp)
	slt	$v0, $t1, $t2
	sw	$v0, -12($fp)
	lw	$v0, -12($fp)
	beqz	$v0, l722		# JmpZero
	li	$v0, 1
	sw	$v0, -16($fp)
	lw	$t1, -24($fp)
	lw	$t2, -16($fp)
	add	$v0, $t1, $t2
	sw	$v0, -20($fp)
	lw	$v0, -20($fp)
	sw	$v0, -24($fp)
	lw	$t1, -24($fp)
	addi	$sp, $sp, -4		# push 
	sw	$t1, 0($sp)
	lw	$t1, 8($fp)
	addi	$sp, $sp, -4		# push 
	sw	$t1, 0($sp)
	addi	$sp, $sp, -4		# push 
	sw	$ra, 0($sp)
	jal	gcd
	lw	$ra, 0($sp)		# pop ra
	addi	$sp, $sp, 4
	addi	$sp, $sp, 8		# deallocate args
	sw	$v0, -28($fp)
	li	$v0, 1
	sw	$v0, -32($fp)
	lw	$t1, -28($fp)
	lw	$t2, -32($fp)
	li	$v0, 0
	sub	$t1, $t1, $t2		# ==
	li	$t2, 1
	movz	$v0, $t2, $t1
	sw	$v0, -36($fp)
	lw	$v0, -36($fp)
	beqz	$v0, l723		# JmpZero
	li	$v0, 1
	sw	$v0, -40($fp)
	lw	$t1, -52($fp)
	lw	$t2, -40($fp)
	add	$v0, $t1, $t2
	sw	$v0, -44($fp)
	lw	$v0, -44($fp)
	sw	$v0, -52($fp)
	j	l724				# Jmp
l723:	nop
	lw	$v0, -52($fp)
	sw	$v0, -52($fp)
l724:	nop
	j	l721				# Jmp
l722:	nop
	lw	$v0, -52($fp)
	sw	$v0, -56($fp)
	lw	$v0, -56($fp)
	move	$sp, $fp
	lw	$fp, 0($sp)		# pop restore fp
	addi	$sp, $sp, 4
	jr	$ra				# return
