.text 

main: addi $2, $0, 5
      syscall 
      add $8, $0, $2
      
      addi $10, $0, 10
      div $8, $10
      mfhi $20
      mflo $8
      
      addi $10, $0, 10
      div $8, $10
      mfhi $21
      mflo $22
      
      add $4, $0, $22
      addi $2, $0, 1
      syscall
      
      add $4, $0, $21
      addi $2, $0, 1
      syscall
      
      add $4, $0, $20
      addi $2, $0, 1
      syscall
      