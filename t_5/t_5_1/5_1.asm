;示例5-1.假设X单元中保存三个数: 9,-6,34,分别判断计算
;x<0:Y=X^2、x>=0 & x<10:Y = 2X+3、X>=10：Y=X/6
data segment 
	X dw 9,-6,34
	Y dw 3 dup(?)
	info1 db 'y[0]=$',0ah
	info2 db 'y[1]=$',0ah
	info3 db 'y[2]=$'
data ends

code segment
	assume ds:data,cs:code
	start:
		mov ax,data
		mov ds,ax
		mov cx,3
		mov si,0
	let0:
		mov ax,x[si]
		cmp ax,0;x≥0？
		jge let1;是
		mov bx,ax
		imul bx
		jmp out1
		
	let1:
		cmp ax,10
		jge let2
		sal ax,1;左移，乘2
		add ax,3
		jmp out1
		
		
	let2:
		mov bl,6
		idiv bl
		
	out1:
		mov y[si],ax
		add si,2;因为你定义的每个数据都是字单元所以要加2
		dec cx
		cmp cx,0
		jnz let0
		
		
		mov ah,4ch
		int 21h
	
code ends
	end start