.text

main: addi $2, $0, 5
      syscall
      mul $8, $2, $2
      addi $2, $0, 10
      syscall