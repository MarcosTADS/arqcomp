.text

main: addi $2, $0, 5
      syscall
      add $8, $0, $2 #1st number
      
      addi $2, $0, 5
      syscall
      add $9, $0, $2 #2nd number
      addi $9, $9, 1

for: beq $8, $9, fim
     andi $10, $8, 1
     beq $10, 0, print
     addi $8, $8, 1
     j for

     
fim: addi $2, $0, 10
     syscall
      
      
print: add $4, $0, $8
       addi $2, $0, 1
       syscall
       addi $8, $8, 1
       j for 
      
      
