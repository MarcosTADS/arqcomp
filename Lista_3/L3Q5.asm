.text

main:   addi $9, $0, 0


laco:	beq $9, 10, fim
	addi $2, $0, 5
        syscall
        add $8, $8, $2 
        add $9, $9, 1
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