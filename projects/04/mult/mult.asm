// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
// 提示：乘法：循环 + 加法

// 1. 初始化 R0 = 3 R1 = 4 R2 = 0
// 1.1 R0 = 3
@3
D=A
@R0
M=D

// 1.2 R1 = 4
@4
D=A
@R1
M=D

// 1.3 R2 = 0
@R2
M=0

// 2. 循环 加法
(LOOP)
// 2.1 循环次数判断
@i
D=M
@R1
D=D-M
@END
D;JEQ // i - R1 = 0 停止加法

// 2.2 循环执行 R2 + R0
@R0
D=M
@R2
M=D+M // 累加

// 2.3 记录循环次数 i + 1
@i
M=M+1

@LOOP
0;JMP // 无条件跳转

(END)
@END
0;JMP