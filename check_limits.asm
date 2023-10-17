.text
 check_limits:
 	# checking if array size is ok (from 1 to 10)
 	# size in a0
 	# returns 1 (true) if input is ok, 0 (false) if intput is out of range - in a0
 	# output argument - array A size in a1
 	
 	start_subprogramm
 	
 	mv a1 a0
 	li a0 1 # function return value now is true
 	
 	# do checking
 	li a2 0
 	ble a1 a2 incorrect_size_check
 	
 	li a2 10
 	bgt a1 a2 incorrect_size_check
 	
 	j end_size_check
 	
 	incorrect_size_check:
 	li a0 0
 	
 	end_size_check:
 	
 	finish_subprogramm
