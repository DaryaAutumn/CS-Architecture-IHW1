.text
form_array:
 	# forms array B
 	# parameters: t1 - array A, t2 - array B, a0 - array A size
 	# returns array B size in a0 register
 	
 	start_subprogramm
 	
 	# load arrays
      	#mv t1 a1
      	#mv t2 a2
      	# set array A size
      	mv t0 a0
 	
 	li a1 1
 	beq t0 a1 end_form_zero
      	
      	lw a1 (t1) # load 1st array A value to a1
      	addi t1 t1 4 # shift to 2nd value 
      	li t3 0 # array B size is in t3 now
      	li t4 1 # store index - t4
      	
      	# form array B
      	while_write:                         
      	lw a2 (t1) # next array A element in a2
      	# check condition (current element > previous)
      	bgt a2 a1 store
      	
      	j end_if_B
      	
      	store:
      	# save number and move index
      	sw a2 (t2)
      	addi t2 t2 4 
      	addi t3 t3 1
      	
      	end_if_B:
      	
      	addi t4 t4 1
      	mv a1 a2 # move current element to previous
      	addi t1 t1 4
      	blt t4 t0 while_write
 	
 	mv a0 t3 # set return value
 	j end_form 
 	
 	end_form_zero:
 	li a0 0
 	
 	end_form:
 	
 	finish_subprogramm
