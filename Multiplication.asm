.data
    mul:    .asciiz "Multiplication\n"
    msg1:   .asciiz "Enter A:   "
    msg2:   .asciiz "Enter B:   "
    msg3:   .asciiz "Your answer\nA * B = "
    newline:.asciiz "\n"
    name1:  .asciiz "Member 1 Name: "
    name2:  .asciiz "Member 2 Name: "
    userInput1: .space 20
    userInput2: .space 20

.text
    main:
        # Input Member 1 Name
        li  $v0, 4
        la  $a0, name1
        syscall
        
        li  $v0, 8
        la  $a0, userInput1
        li  $a1, 20
        syscall

        # Input Member 2 Name
        li  $v0, 4
        la  $a0, name2
        syscall
        
        li  $v0, 8
        la  $a0, userInput2
        li  $a1, 20
        syscall

        # Print "Multiplication"
        li  $v0, 4
        la  $a0, mul
        syscall

        # Get Input A
        li  $v0, 4
        la  $a0, msg1
        syscall

        li  $v0, 5
        syscall
        move $t0, $v0  

        # Get Input B
        li  $v0, 4
        la  $a0, msg2
        syscall

        li  $v0, 5
        syscall
        move $t1, $v0  

        # Perform Multiplication
        mul $t0, $t0, $t1  

        # Print Member Names
        li  $v0, 4
        la  $a0, userInput1
        syscall
        li  $v0, 4
        la  $a0, newline
        syscall

        li  $v0, 4
        la  $a0, userInput2
        syscall
        li  $v0, 4
        la  $a0, newline
        syscall

        # Print Result
        li  $v0, 4
        la  $a0, msg3
        syscall

        li  $v0, 1
        move $a0, $t0
        syscall

        li  $v0, 4
        la  $a0, newline
        syscall

        li  $v0, 10
        syscall



