.data

corpo:	.word 0x10011870, 0x10011674, 0x10011478, 0x1001127c, 0x10011280, 0x10011284, 0x10011288, 0x1001128c, 0x10011290, 0x10011494, 0x10011698, 0x1001189c, 0x10011a9c, 0x10011c9c, 0x10011e9c, 0x1001209c, 0x10012298, 0x10012494, 0x10012690, 0x10012690, 0x10012688, 0x10012678, 0x1001267c, 0x10012680, 0x10012684, 0x10012688, 0x1001268c, 0x10012690, 0x10012474, 0x10012270, 0x1001206c, 0x10011868, 0x10011a68, 0x10011c68, 0x10011e68, 0x1001166c
rosto:	.word 0x1001187c, 0x1001188c, 0x10011c78, 0x10011e7c, 0x10011e80, 0x10011e84, 0x10011e88, 0x10011e8c, 0x10011c90, 
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
	
	

main:	lui $16, 0x1004
	
	jal pnt
	jal pnt1
	jal finder
	jal paint
	
	
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

#============Paint===========#

paint: lui $16, 0x1004
	add $19, $0, $17

forP:	beq $17, $0, fPaint
	
	lw $4, 144($16)
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
	
	j forP
	
fPaint: jr $31
	
#============Pnt===========#
# Range: Da posição 0 a posição 36 do vetor

pnt:	lui $16, 0x1004
	addi $17, $0, 36
	ori $18, $0, 0x9FD5EF

forPn:	beq $17, $0, fPnt

	lw $4, 0($16)
	sw $18, 0($4)
	
	addi $16, $16, +4
	addi $17, $17, -1
	
	j forPn
	
fPnt:	jr $31

#============Pnt===========#
# Range: Da osição 37 -> 144($16) a posição 44 do vetor 

pnt1:	lui $16, 0x1004
	addi $17, $0, 9
	ori $18, $0, 0x9FD5EF

forPn1:beq $17, $0, fPnt1

	lw $4, 144($16)
	sw $18, 0($4)
	
	addi $16, $16, +4
	addi $17, $17, -1
	
	j forPn1
	
fPnt1:	jr $31
	

		

	
	

	
