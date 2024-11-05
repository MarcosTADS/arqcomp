.text

main: addi $2, $0, 5 #read first number
      syscall
      add $8, $0, $2
      sll $4, $8, 1 #mult 
      addi $2, $0, 1
      syscall
