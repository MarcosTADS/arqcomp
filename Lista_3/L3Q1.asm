.text

main: addi $9, $0, 11 #set stop condition
      addi $8, $0, 1 #set control variable
      addi $10, $0, 3

cout: add $4, $0, $10
      addi $2, $0, 1
      syscall
      
      addi $4, $0 ' '
      addi $2, $0, 11
      syscall
      
      addi $4, $0, 'x'
      addi $2, $0, 11
      syscall
      
      addi $4, $0, ' '
      addi $2, $0, 11
      syscall
      
      add $4, $0, $8
      addi $2, $0, 1
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
            
      mul $4, $8, $10
      addi $2, $0, 1
      syscall
       
      addi $4, $0, '\n'
      addi $2, $0, 11
      syscall

      addi $8, $8, 1
      bne $8, $9, cout
      
fim: addi $2, $0, 10
     syscall