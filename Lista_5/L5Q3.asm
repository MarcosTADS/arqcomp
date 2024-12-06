#Faça um programa que leia um vetor de 8 posições e, em seguida, leia também dois
#valores X e Y quaisquer correspondentes a duas posições (índices) no vetor. Ao final
#seu programa deverá escrever a soma dos valores encontrados nas respectivas
#posições X e Y.

.data
vtr:	.word 1, 0, 5, -2, -5, 7, 10, 15

.text

main:	lui $5, 0x1001
	addi $6, $0, 6
	addi $7, $0, 7
	
	jal prm
	
fim: 	addi $2, $0, 10
	syscall

#Rotina para receber dois números referentes a índices do vetor e somar
#os dois valores contidos nesses índices.
#Entrada: $5 (Endereço de memoria)
#	   $6 (X)
#	   $7 (Y)
#Saída: $2 (Resultado da soma dos valores)
#Usa sem preservar: $8 ao $15

prm:	add $8, $0, $5
	add $9, $0, $6
	add $10, $0, $7
	
	add $14, $0, $31
	
	jal indxX
	jal indxY

	
prog:	add $4, $12, $13
	addi $2, $0, 1
	syscall
	
	add $31, $0, $14
	
	jr $31


indxX:	addi $8, $8, 4
	addi $11, $11, 1
	bne $11, $9, indxX
	
	lw $12, 0($8)
		
	add $11, $0, $0
	lui $8, 0x1001
	
	jr $31
	
indxY:	addi $8, $8, 4
	addi $11, $11, 1
	bne $11, $10, indxY
	
	lw $13, 0($8)
		
	add $11, $0, $0
	lui $8, 0x1001
	
	jr $31





	