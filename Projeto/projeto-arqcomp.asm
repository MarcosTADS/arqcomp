.text

main:	lui $8, 0x1001
	
	jal prmF1 #Céu
	jal prmF2 #Primeira linha de grama
	jal prmF4 #1º detalhe da grama
	jal prmF5 #2º detalhe da grama
	jal prmF3 #Terra

fim:	addi $2, $0, 10
	syscall


#===========CÉU-1==============#

prmF1:	addi $9, $0, 7168
	ori $4, $0, 0x35A1FF

for1:	beq $9, $0, fimF1

	sw $4, 0($8)
	
	add $8, $8, 4
	
	addi $9, $9, -1
	
	j for1

fimF1:	jr $31

#===========CÉU-1==============#

#===========GRAMA============#

prmF2:	addi $11, $0, 128
	ori $4, $0, 0x00A210
	
for2:	beq $11, $0, fimF2

	sw $4, 0($8)
	
	add $8, $8, 4
	
	addi $11, $11, -1
	
	j for2
	

fimF2: jr $31

#===========GRAMA============#

#=======DETALHE-GRAMA-1========#

prmF4:	addi $12, $0, 128
	ori $13, $0, 0x00A210
	ori $14, $0, 0x8B4513
	
for4:	beq $12, $0, fimF4
	
	add $4, $0, $13
	
	beq $15, 4, terra
	
	sw $4, 0($8)
	
	add $8, $8, +4
	
	addi $12, $12, -1
	addi $15, $15, +1
	
	j for4
	
fimF4:	add $15, $0, $0
	jr $31
	
terra:	add $15, $0, $0
	add $4, $0, $14

forT:	beq $15, 1, FTerra
	beq $12, $0, fimF4
	sw $4, 0($8)
	add $8, $8, +4
	add $15, $15, +1
	addi $12, $12, -1
	j forT

FTerra:add $15, $0, $0
	j for4
	
#=======DETALHE-GRAMA-1========#

#=======DETALHE-GRAMA-2========#

prmF5:	addi $12, $0, 128
	ori $13, $0, 0x00A210
	ori $14, $0, 0x8B4513
	
for5:	beq $12, $0, fimF5
	
	add $4, $0, $14
	
	beq $15, 2, grama
	
	sw $4, 0($8)
	
	add $8, $8, +4
	
	addi $12, $12, -1
	addi $15, $15, +1
	
	j for5
	
fimF5:	jr $31
	
grama:	add $15, $0, $0
	add $4, $0, $13

forG:	beq $15, 1, FGrama
	beq $12, $0, fimF5
	sw $4, 0($8)
	add $8, $8, +4
	add $15, $15, +1
	addi $12, $12, -1
	j forG

FGrama:add $15, $0, $0
	j for5
	
#=======DETALHE-GRAMA-2========#



#===========TERRA============#

prmF3:	addi $10, $0, 640
	ori $4, $0, 0x8B4513
	
for3:	beq $10, $0, fimF3

	sw $4, 0($8)
	
	add $8, $8, 4
	
	addi $10, $10, -1
	
	j for3

fimF3:	jr $31
	
#===========TERRA============#	
	

	

	
	
