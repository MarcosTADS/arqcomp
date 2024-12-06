#Faça um programa que possua um vetor (apelide de A) que armazene 6 números
#inteiros. O programa deve executar os seguintes passos:

.data

vetorA:	.word	1, 0, 5, -2, -5, 7

.text

main:	lui $4, 0x1001
		jal prmR1
		jal prmR2
		jal prmR3
				
								
fimPrg:	addi $2, $0, 10
		syscall
		
#Rotina para somar valores dos índices
#Entradas: $4 -> Endereço de memória

prmR1:	add $9, $0, $4	

R1:		lw $8, 0($9)
		lw $10, 4($9)
		lw $11, 20($9) 
		
		add $12, $8, $10
		add $12, $12, $11
		
		add $4, $0, $12
		addi $2, $0, 1
		syscall
		
		addi $4, $0, '\n'
		addi $2, $0, 11
		syscall
		
		lui $4, 0x1001
		
fimR1:	jr $31

#Rotina para trocar o valor da posição 4
#Entradas: $4 -> Endereço de memória

prmR2:	add $9, $0, $4	

R2:		addi $8, $0, 100
		sw $8, 16($9)
		
		lw $4, 16($9)
		addi $2, $0, 1
		syscall
		
		addi $4, $0, '\n'
		addi $2, $0, 11
		syscall
		
		lui $4, 0x1001
		
fimR2:	jr $31

#Rotina para imprimir todos os valores do vetor linha a linha
#Entradas: $4 -> Endereço de memória
		
prmR3:	add $9, $0, $4

R3:		lw $4, 0($9)
		addi $2, $0, 1
		syscall
		
		addi $4, $0, '\n'
		addi $2, $0, 11
		syscall

		addi $9, $9, 4
		addi $10, $10, 4
		
		bne $10, 24, R3
		
fimR3:	jr $31
		
		
