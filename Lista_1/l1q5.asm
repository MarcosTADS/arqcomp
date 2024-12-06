.text 

main: addi $2, $0, 5
      syscall
      add $8, $0, $2
      
      addi $10, $0, 10
      div $8, $10
      mfhi $20 #unidade
      mflo $8
      
      addi $10, $0, 10
      div $8, $10
      mfhi $21 #dezena
      mflo $22
      
      add $22, $22, $21
      add $20, $22, $20
      
      addi $4, $0, 're'
      
      addi $2, $0, 1
      syscall
      
      
      