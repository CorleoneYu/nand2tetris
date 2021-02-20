// Code: 将 ram[100] 开始往后 10 个寄存器，都设置为 -1
// let arr = 100;
// let n = 10;
// for (let i = 0; i < n; i++) {
//   arr[i] = -1;
// }

// 1. 初始化变量

// 1.1 arr = 100;
@100 // 将 A 寄存器设为 100
D=A 
@arr // 声明 arr 变量 且 M 对应 arr
M=D // D 里的 100 赋值给 M，即 arr 指向地址 100

// 1.2 n = 10;
// 可以发现与 1.1 基本一致
@10
D=A
@n
M=D

// 1.3 i =0; 
// 0 跟 1 可以直接赋值
@i
M=0

// 2. 循环
(LOOP)
// 2.1 判断 i 是否已经循环 n 次
@i
D=M
@n
D=D-M
@END
D;JEQ // 如果 i - n = 0, 跳转到 END 结束

// 2.2 执行循环
@arr
D=M
@i
A=D+M
M=-1

// 2.3 记录执行次数
@i
M=M+1

@LOOP
0;JMP // 无条件跳转

(END)
@END
0;JMP