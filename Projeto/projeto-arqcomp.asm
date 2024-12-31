.text
memMngr:
	lui $8, 0x1001
	lui $16, 0x1004
	addi $17, $0, 45

forMm:	beq $17, $0, fMm

	lw $9, 0($8)
	sw $9, 0($16)
	
	addi $8, $8, +4
	addi $16, $16, +4
	addi $17, $17, -1
	
	j forMm
	
fMm:


main:	lui $8, 0x1001
	
	
	jal prmF1 #C�u
	jal prmDetCeu1 #1� Detalhe do C�u
	jal prmF2 #Primeira linha de grama
	jal prmF4 #1� detalhe da grama
	jal prmF5 #2� detalhe da grama
	jal prmF3 #Terra
	jal finder
	jal printVct
	
	#jal prmF6

fim:	addi $2, $0, 10
	syscall
	
#=========Adress-Finder======#

finder:lui $8, 0x1001
       addi $9, $0, 512
       ori $5, $0, 0xffff  # $5 <= 0x0000ffff
       sll $5, $5, 8       # $5 <= 0x00ffff00


      lui $8, 0x1001
      ori $20, 0xffffff #Cor do ponto
      addi $10, $0, 512
      lui $21, 0xffff
      addi $25, $0, 32
      addi $10, $0, 4
      addi $11, $0, 'a'
      addi $12, $0, 'd'
      addi $13, $0, 's'
      addi $14, $0, 'w'
      addi $15, $0, 'f'
      
     
for:      
      sw $20, 0($8)
      lw $22, 0($21)
      beq $22, $0, cont
      lw $23, 4($21)
      beq $23, $25, fimFdr
      beq $23, $11, esq
      beq $23, $12, dir
      beq $23, $13, baixo
      beq $23, $14, cima
      beq $23, $15, mark
     
      j cont
      
esq:  addi $8, $8, -4 
      lw $9, 32768($8)
      sw $9, +4($8)     
      j cont
     
dir:  addi $8, $8, +4
      lw $9, 32768($8)
      sw $9, -4($8)
      
      j cont  
     
baixo:addi $8, $8, +512
      lw $9, 32768($8)
      sw $9, -512($8)
      j cont
     
cima: addi $8, $8, -512
      lw $9, 32768($8)
      sw $9, +512($8)
      j cont 
      
mark: ori $4, $0, 0x9FD5EF 
      sw $4, 0($8)
      sw $4, 32768($8)
      
      sw $8, 0($16)
      add $16, $16, +4 
      
      addi $8, $8, +4
      ori $20, 0xffffff
      addi $17, $17, +1
      
      j cont                      
                 
     
cont: j for
fimFdr: jr $31    

#=========Adress-Finder======#

#============printVct===========#

printVct: 
	lui $16, 0x1004
	add $19, $0, $17

forPVct:	
	beq $17, $0, fPVct
	
	lw $4, 0($16)
	addi $2, $0, 34
	syscall
	
	addi $4, $0, ','
	addi $2, $0, 11
	syscall
	
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall
	
	addi $16, $16, +4
	addi $17, $17, -1
	
	j forPVct
	
fPVct: jr $31

#============printVct===========#
	
#===========C�U==============#

prmF1:	addi $9, $0, 7168
	ori $4, $0, 0x8ECCEE
	ori $10, 0x10012200

for1:	beq $8, $10, fimF1

	sw $4, 0($8)
	sw $4, 32768($8)
	
	add $8, $8, 4
	
	addi $9, $9, -1
	
	j for1

fimF1:	add $10, $0, $0
	jr $31

#===========C�U==============#

#===========DETALHE-C�U-1==============#

prmDetCeu1:

	#ori $9, 0x10012200
	ori $10, 0x10012600
	ori $4, $0, 0x9FD5EF 
	

forDetCeu1:	

	beq $8, $10, fimDetCeu1

	sw $4, 0($8)
	sw $4, 32768($8)
	
	add $8, $8, 4
	
	addi $9, $9, -1
	
	j forDetCeu1

fimDetCeu1:	
	
	jr $31

#===========DETALHE-C�U-1==============#


#=========ESTILINGUE===========#

#prmF6:	lui $8, 0x1001
#	ori $4, $0, 0x654321 
#	#add $9, $0, $0
	
#	sw $4, 43008($8)
	
#fimF6:	jr $31
	
#for6:	beq $9, 100, fimF6

#=========ESTILINGUE===========#

#===========GRAMA============#

prmF2:	addi $11, $0, 128
	ori $4, $0, 0x00A210
	
for2:	beq $11, $0, fimF2

	sw $4, 0($8)
	sw $4, 32768($8)
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
	sw $4, 32768($8)
	
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
	sw $4, 32768($8)
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
	sw $4, 32768($8)
	
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
	sw $4, 32768($8)
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
	sw $4, 32768($8)
	
	add $8, $8, 4
	
	addi $10, $10, -1
	
	j for3

fimF3:	jr $31
	
#===========TERRA============#	
	

	

	
	
