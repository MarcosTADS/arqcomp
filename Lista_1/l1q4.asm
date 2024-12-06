.text

main: addi $2, $0, 5
      syscall
      add $8, $0, $2
      
      addi $2, $0, 5
      syscall
      add $8, $8, $2
      
      addi $2, $0, 2
      div $8, $2
      mflo $4
      
      addi $2, $0, 1
      syscall
      
      addi $2, $0, 10
      
      
      
      