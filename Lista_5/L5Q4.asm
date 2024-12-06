#Faça um programa que leia um vetor de 10 posições. Contar e escrever quantos
#valores pares ele possui.

.data
vtr:	.word	2, 0, 4, -2, 6, 7, 8, 15, 10, 11

.text

main:	lui $5, 0x1001
	jal prm
	

fim:	addi $2, $0, 10
	syscall
	

prm:	add $8, $0, $5
	
prog:	lw $9, 0($8)
	addi $8, $8, 4
	andi $10, $9, 1
	beq $10, 0, print
	
	addi $11, $11, 1
	bne $11, 10, prog
	jr  $31
	
print: add $4, $0, $9
	addi $2, $0, 1
	syscall
	
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall
	
	addi $11, $11, 1
	j prog