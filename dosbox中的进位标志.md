debug中的标志位显示顺序   
OF DF IF SF ZF AF PF CF  

OF 标志位(溢出)   
OF = 1, 显示为OV   
OF = 0, 显示为NV   
影响OF的指令举例, INC  

DF 标志位(方向)   
DF = 0, 显示为UP   
DF = 1, 显示为DN   
影响DF的指令举例, CLD, STD  

IF 标志位(中断)   
IF = 0，显示为DI   
IF = 1, 显示为EI   
影响IF的指令举例, CLI, STI  

SF 标志位(符号位)   
SF = 1, 显示为NG, 表示负数   
SF = 0, 显示为PL, 表示为正数   
影响SF的指令举例, INC  

ZF标志位(零标志)   
ZF = 1, 显示为ZR   
ZF = 0, 显示为NZ   
影响ZF的指令举例, XOR  

AF标志位(半进位)   
AF = 0, 显示为NA   
AF = 1, 显示为AC   
影响AF的指令举例, INC  

PF标志位(奇偶标志位)   
PF = 1, 显示为PE   
PF = 0, 显示为PO   
影响PF的指令举例, INC  

CF 标志位(进位标志)   
CF = 1, 显示为 CY   
CF = 0, 显示为 NC   
影响CF的指令举例, CLC, STC  