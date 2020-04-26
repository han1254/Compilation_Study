;(x+3*y-45)/z
data segment
	x dw 48
	y dw -21
	z dw 14
	w dw ?,?
data ends
code segment
assume ds:data,cs:code
start:
	mov ax,data
	mov ds,ax
	mov ax,3
	imul y ;带符号位乘法，低位放入ax，高位放入dx
	mov bx,ax
	mov cx,dx
	mov ax,x
	cwd ax
	add ax,bx
	adc dx,cx
	sub ax,45;低位减去45
	sbb dx,0;ax减去45，考虑是否需要借位
	
	idiv z;商存入ax，余数存入dx
	mov w,ax
	mov w+2,dx
	
	mov ah,4ch
	int 21h
code ends
end start
