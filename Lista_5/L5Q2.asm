#Q2) Crie um programa que lê 6 valores inteiros e, 
#em seguida, mostre na tela os valores lidos.

.data 
array:	.word 1, 0, 5, -2, -5, 7, 8

.text

main:	lui $4, 0x1001
	addi $5, $0, 7
	jal prm
	
fim:	addi $2, $0, 10
	syscall

#Rotina para imprimir sequencia de inteiros
#Entradas: $4 (Endereço do primeiro inteiro)
#	   $5 (quantidade de valores a imprimir)
#usa (sem preservar): $9, $10, $4, $2



prm:	add $9, $0, $4
	add $10, $0, $5
	

printV:	lw $4, 0($9)
	addi $2, $0, 1
	syscall
	
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall
	
	addi $9, $9, 4
	addi $10, $10, -1
	
	bne $10, $0, printV
	
fimRtn:	jr $31



