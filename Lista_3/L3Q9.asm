#Faça um programa leia certa quantidade de números e imprima o maior deles e
#quantas vezes o maior número foi lido. A quantidade de números a serem lidos deve
#ser fornecido pelo usuário.

.text

main: 	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
lerNum:	beq $8, $9, fim
	
	addi $2, $0, 5
	syscall
	beq $10, $0, menor
	
	slt $12, $2, $10
	beq $12, 1, menor
	
	slt $12, $11, $2
	beq $12, 1, maior
	
	beq $11, $2, maior
	
	addi $9, $9, 1
	j lerNum

menor:	add $10, $0, $2
	beq $11, $0, maior
	addi $9, $9, 1
	j lerNum
	
maior:	add $11, $0, $2
	addi $13, $13, 1
	addi $9, $9, 1
	j lerNum 
	
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
	
	add $4, $0, $11
	addi $2, $0, 1
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'X'
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
	
	add $4, $0, $13
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
	
	add $4, $0, $10
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall