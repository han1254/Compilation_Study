data segment
	;第一个数 20034980h
	d1_2 dw 4980h
	d1_1 dw 2003h
	;第二个数 1008e699h
	d2_2 dw 0e699h
	d2_1 dw 1008h
	d3_2 dw ?
	d3_1 dw ?
data ends

code segment
assume ds:data,cs:code
start:
	mov ax,data
	mov ds,ax 
	mov ax,d1_2;第一个数低位
	mov dx,d1_1;第一个数高位
	mov bx,d2_2;第二个数低位
	mov cx,d2_1;第二个数高位
	add ax,bx
	adc dx,cx;adc 在相加的同时加上上个add的进位
	mov d3_2,ax 
	mov d3_1,dx
	mov ah,4ch
	int 21h
code ends
end start