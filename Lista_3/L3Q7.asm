#Faça um programa que leia números inteiros diferentes de zero e calcule a soma dos
#valores positivos. O laço do programa termina quando o usuário digita um valor zero.
#Em seguida o programa imprime a soma dos valores positivos digitados.

.text

laco:	addi $9, $0, 0 
	
	addi $2, $0, 5
        syscall
        
        beq $2, $0, fim
        
        slt $9, $2, $9
        beq $9, 1, laco
        
        add $8, $8, $2 
	j laco
	
fim:	addi $4, $0, 'S'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'O'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'M'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'A'
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

