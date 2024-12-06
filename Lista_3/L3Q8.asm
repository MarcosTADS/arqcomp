#Faça um programa que leia números inteiros diferentes de zero e encontre o menor
#valor digitado e o maior valor digitado. O programa informa o maior e o menor, um em
#cada linha, quando o usuário digitar um 0.

.text 

main:	addi $2, $0, 5
	syscall	
	beq $2, 0, fim
	beq $8, $0, menor

		
	slt $9, $2, $8
	beq $9, 1, menor
		
	slt $9, $2, $12
	beq $9, $0, maior
	
	j main

menor:	add $8, $0, $2
	beq $12, $0, maior
	j main

maior:	add $12, $0, $2
	j main
	
fim:	addi $4, $0, 'M'
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
	
	add $4, $0, $12
	addi $2, $0, 1
	syscall	
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'm'
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