#Faça um programa para calcular o MDC de dois números fornecidos pelo usuário,
#usando o algoritmo de Euclides (busque na Internet o funcionamento desse
#algoritmo).

.text 

main:	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	
	addi $11, $0, 1
	
	slt $10, $8, $9
	beq $10, 1, swt
	beq $10, 0, eucli

swt:	add $9, $0, $8
	add $8, $0, $2
	
eucli:	beq $11, 0, fim
	
	div $8, $9
	mflo $12
	mul $13, $12, $9
	sub $11, $8, $13
	add $8, $0, $9
	add $9, $0, $11
	j eucli

fim:	addi $4, $0, 'M'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'D'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'C'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall
	
	addi $4, $0, '='
	addi $2, $0, 11
	syscall
	
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall
	
	add $4, $0, $8
	addi $2, $0, 1
	syscall		

	addi $2, $0, 10
	syscall
	
