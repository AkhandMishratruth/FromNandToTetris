//// This file is part of www.nand2tetris.org
//// and the book "The Elements of Computing Systems"
//// by Nisan and Schocken, MIT Press.
//// File name: projects/07/MemoryAccess/BasicTest/BasicTest.vm
//
//// Executes pop and push commands using the virtual memory segments.
//push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop local 0
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

//push constant 21
@21
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 22
@22
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop argument 2
@ARG
D=M
@R13
M=D
@2
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

//pop argument 1
@ARG
D=M
@R13
M=D
@1
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

//push constant 36
@36
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop this 6
@THIS
D=M
@R13
M=D
@6
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

//push constant 42
@42
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop that 5
@THAT
D=M
@R13
M=D
@5
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

//pop that 2
@THAT
D=M
@R13
M=D
@2
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

//push constant 510
@510
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop temp 6
@SP
M=M-1
A=M
D=M
@11
M=D
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

//push that 5
@THAT
D=M
@5
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

//push argument 1
@ARG
D=M
@1
D=D+A
A=D
D=M
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

//push this 6
@THIS
D=M
@6
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push this 6
@THIS
D=M
@6
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

//push temp 6
@11
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
