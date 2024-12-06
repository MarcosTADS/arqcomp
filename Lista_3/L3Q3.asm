.text

main: addi $2, $0, 5
      syscall
      add $10, $0, $2 #Ref
      
      addi $2, $0, 5
      syscall
            
      addi $8, $0, 1 #set control variable
      add $9, $8, $2 #qtd + 1
     
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
