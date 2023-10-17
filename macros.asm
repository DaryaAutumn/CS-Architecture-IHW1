.macro add_to_array (%element, %array_register)
	li a0 %element
	sw a0 (%array_register)
	addi %array_register %array_register 4
.end_macro

.macro print_str (%x)
   	.data
	str:  .asciz %x
   	.text
   	li a7, 4
   	la a0, str
   	ecall
.end_macro

.macro print_int (%x)
	li a7, 1
	mv a0, %x
	ecall
.end_macro

.macro endl
   	print_str("\n")
.end_macro

.macro space
	print_str(" ")
.end_macro

.macro print_array (%array_name, %array_link, %size_register)

	mv t0 %size_register # array size in t0 now
 	
 	#check if array is not empty
 	li a1 0 
 	beq t0 a1 zero_size
 	
      	la t2 %array_link
      	li t3 0
      	
      	while_print:
      	# print array element
      	lw a0 (t2)
      	print_int(a0)
      	space
      	
      	addi t3 t3 1
      	addi t2 t2 4
      	blt t3 t0 while_print
      	j end_print
      	
      	
      	# if array is empty
      	zero_size:
      	print_str(%array_name)
      	print_str(" is empty!")
      	endl
      	
      	end_print:
      	endl
	
.end_macro

.macro start_subprogramm
	addi sp sp -4
 	sw ra (sp)
.end_macro

.macro finish_subprogramm
	lw ra (sp)
      	addi sp sp 4
 	ret
.end_macro





