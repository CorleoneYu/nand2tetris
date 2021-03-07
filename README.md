# 从零开始构建现代计算机

[学习笔记](https://docs.qq.com/doc/DRHNqbVpGR0taTXFZ)  
[项目地址](https://github.com/CorleoneYu/nand2tetris)

## 硬件平台

[课程 part1](https://www.coursera.org/learn/build-a-computer/home/welcome)    

part 1 致力于从底层开始，自底向上搭建一个硬件平台：被称为 Hack 的小计算机。  

1. 一章：基本逻辑门，与非门等；
2. 二章：布尔运算，构建计算机的组合逻辑；
3. 三章：时序逻辑，构建计算机的寄存器、内存等；（这章没看懂
4. 四章：Hack 的汇编语言，机器语言；
5. 五章：将前面所学融合，搭建 Hack 小计算机；
6. 六章：汇编器，沿袭 四章，写一个「汇编器」将 汇编语言 翻译成 机器语言；

硬件的部分基本是跳着
### 六、汇编器

课程中第六章，编写「汇编器」将 「汇编代码」 转换为 「机器语言」。    

[参考笔记一](https://www.jianshu.com/p/19bd2a6761d0)  

[参考笔记二](https://www.jianshu.com/p/19fb662248cd)

源代码在 compiler 项目中，效果图如下：

![汇编器](https://docimg1.docs.qq.com/image/pdhdRMCIqPLB0aeOBze-2Q?w=2232&h=1132)

## 软件体系

[课程 part2](https://www.coursera.org/learn/nand2tetris2#syllabus)

### 七、虚拟机：堆栈运算

课程中第七章，先介绍了「虚拟机」的概念，进而编写「VM转换器」将「vm代码」转换为「汇编代码」；  

源代码在 compiler 项目中，效果图如下：