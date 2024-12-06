#Fa�a um programa que leia um vetor com 10 posi��es. Em seguida dever� ser
#impresso o maior e o menor elemento do vetor.

.data

vetor:	.word 23, 56, 54, 76, 25, 55, 14, 1, 67, 91

.text

main:	lui $5, 0x1001
	
	jal prm
	
	add $4, $0, $12
	addi $2, $0, 1
	syscall
	
fim:	addi $2, $0, 10
	syscall

#Rotina que imprime o maior e o menor n�mero de um vetor
#Entrada: $5 (Endere�o de mem�ria)
#Sa�da:   $2
#Usa sem preservar: $8 ao $12
prm:	add $8, $0, $5
	lw $12, 0($8)
	

prog:	beq $9, 10, fProg
	
	lw $10, 0($8)
	add $8, $8, 4
	
	slt $11, $10, $12
	beq $11, 1, menor
	
	add $9, $9, 1	
	j prog

fProg:	jr $31
	
menor: add $12, $0, $10
	add $9, $9, 1	
	j prog
	
	
