# Generated by mc: 15:55 3.25.2020.
#
	.data
	.text
main:	addi	$sp, $sp, -4		# push fp
	sw	$fp, 0($sp)
	move	$fp, $sp		# fp <- sp
	addi	$sp, $sp, -4		# allocate locals
	lw	$t1, 12($fp)
	lw	$t2, 8($fp)
	add	$v0, $t1, $t2
	sw	$v0, -4($fp)
	lw	$a0, -4($fp)
	move	$sp, $fp
	lw	$fp, 0($sp)		# pop restore fp
	addi	$sp, $sp, 4
	li	$v0, 17			# $v0 gets exit code for syscall
	syscall				# Exit here