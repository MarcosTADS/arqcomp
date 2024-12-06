#Faça um programa que leia números inteiros e calcule a soma. O laço do programa
#termina quando o usuário digita um valor negativo. Em seguida o programa imprime a
#soma dos valores digitados.

.text

main:   addi $9, $0, 0
 

laco:	
	addi $2, $0, 5
        syscall
        slt $9, $2, $9
        beq $9, 1, fim
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

