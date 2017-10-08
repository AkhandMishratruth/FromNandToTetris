//// This file is part of www.nand2tetris.org
//// and the book "The Elements of Computing Systems"
//// by Nisan and Schocken, MIT Press.
//// File name: projects/08/ProgramFlow/BasicLoop/BasicLoop.vm
//
//// Computes the sum 1 + 2 + ... + argument[0] and pushes the 
//// result onto the stack. Argument[0] is initialized by the test 
//// script before this code starts running.
//push constant 0    
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop local 0         // initializes sum = 0
@LCL
D=M
@R13
M=D
@0
D=A
@R13
M=D+M
@SP
M=M-1
A=M
D=M
@R13
A=M
M=D

//label LOOP_START
(LOOP_START)

//push argument 0    
@ARG
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@LCL
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
//->add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D

//pop local 0	        // sum = sum + counter
@LCL
D=M
@R13
M=D
@0
D=A
@R13
M=D+M
@SP
M=M-1
A=M
D=M
@R13
A=M
M=D

//push argument 0
@ARG
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//sub
//->sub
@SP
M=M-1
@SP
A=M
D=M
@SP
A=M-1
M=M-D

//pop argument 0      // counter--
@ARG
D=M
@R13
M=D
@0
D=A
@R13
M=D+M
@SP
M=M-1
A=M
D=M
@R13
A=M
M=D

//push argument 0
@ARG
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1

//if-goto LOOP_START  // If counter > 0, goto LOOP_START
@SP
M=M-1
A=M
D=M
@LOOP_START
D;JNE

//push local 0
@LCL
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1

