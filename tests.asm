# test programm
.data
array_A:  .word  10  
array_B:  .word  10

.include 	"macros.asm"

.text
	# 1 test 
	print_str("Values in array A:")
      	endl
      	
	la t1 array_A
	add_to_array(1, t1)
	add_to_array(2, t1)
	add_to_array(3, t1)
	add_to_array(4, t1)
	add_to_array(5, t1)
	
	li a0 5
	la t2 array_A
	print_array("Array A", array_A, a0)
	
	#load parameters
	li a0 5
	la t1 array_A
	la t2 array_B
	jal form_array
	
	mv t0 a0
	print_str("Values in array B:")
	endl
	print_array("Array B", array_B, t0)
	
	
	
	
	endl
	li t0 0
	li t1 0
	# 2 test
	
	print_str("Values in array A:")
      	endl
      	
	la t1 array_A
	add_to_array(1, t1)
	add_to_array(1, t1)
	add_to_array(1, t1)
	add_to_array(3, t1)
	add_to_array(6, t1)
	
	li a0 5
	la t2 array_A
	print_array("Array A", array_A, a0)
	
	#load parameters
	li a0 5
	la t1 array_A
	la t2 array_B
	jal form_array
	
	mv t0 a0
	print_str("Values in array B:")
	endl
	print_array("Array B", array_B, t0)
	
	
	
	
	endl
	li t0 0
	li t1 0
	# 3 test
	
	print_str("Values in array A:")
      	endl
      	
	la t1 array_A
	add_to_array(6, t1)
	add_to_array(5, t1)
	add_to_array(4, t1)
	add_to_array(3, t1)
	add_to_array(2, t1)
	add_to_array(1, t1)
	
	li a0 6
	la t2 array_A
	print_array("Array A", array_A, a0)
	
	#load parameters
	li a0 5
	la t1 array_A
	la t2 array_B
	jal form_array
	
	mv t0 a0
	print_str("Values in array B:")
	endl
	print_array("Array B", array_B, t0)
	
	li a7 10
	ecall

.include "print_array.asm"
.include "form_array.asm"



