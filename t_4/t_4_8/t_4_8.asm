;示例4_8 用简化的程序格式从键盘输入两个一位的十进制数，做加法运算。
;相加后以蓝底黄字显示到屏幕上

;1.显示：1号功能
;2.非压缩BCD码加法调整指令AAA会将AL的高四位清零
;因此键盘输入的数字不必去掉30h，可直接运算
;3.用BIOS中断调用INT 10H的3号功能获得光标位置
;让结果显示到光标处
;4.由于计算结果不会超过两位十进制，可使用SI寄存器
;保存十进制数的ASCII码。
data segment
data ends
code segment
	assume cs:code,ds:data
	start:
	
	mov ah,1
	int 21h
	
	mov bl,al;输入的数进入al，用bl保存al
	mov ah,2
	mov dl,0ah;使用换行功能
	int 21h
	mov ah,1
	int 21h
	add al,bl;加在一起
	mov ah,0;ah=1，由于al和bl相加的结果可能大于9，要往ah进位，所以先将ah置零
	aaa;如果有进位，直接进到ah里面
	add ax,3030h;ah是十位数的ascii码，al是个位数的ascii码
	mov bh,ah
	mov bl,al
	mov ah,2
	mov dl,0ah;输出结果的时候换行
	int 21h
	mov dl,bh
	int 21h
	mov dl,bl
	int 21h
	
	
	mov ah,4ch
	int 21h
code ends
	end start