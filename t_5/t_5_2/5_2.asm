;示例5-2 设计分支程序。
;计算Y=5X-18，如果结果为负，求绝对值。并显示十进制结果。
;1.用用数据段保存X、Y。为了简洁，X定义为字节，Y定义为字
;2.用符号位SF判断运算结果的正负，为负数则求补（求绝对值），如果是正数，直接保存
;3
data segment
	
data ends

code segment
code ends