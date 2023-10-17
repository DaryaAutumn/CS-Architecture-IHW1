.text 
 input_array:
 	# reads values from console and forms array A
 	# t1 - array register, a1 - array size
 	# a0 - array size
 	
 	start_subprogramm
 	
 	print_str("Enter integer values to array:\n")
 	
 	# array size in t0
 	mv t0 a1
 	
      	li t2 1 # store index
      	while_read:
      	li a7 5 # read number
      	ecall
      	sw a0 (t1)
      	addi t1 t1 4
      	addi t2 t2 1
      	bleu t2 t0 while_read
      	
      	# set output arguments
      	mv a0 t0
      	
      	# renew stack
      	finish_subprogramm
