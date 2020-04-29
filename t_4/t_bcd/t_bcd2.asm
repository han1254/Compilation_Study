data segment
	T1 db 06h
	T2 db 08h
data ends

code segment
assume ds:data,cs:code
start:
	mov ax,data
	mov ds,ax
	mov ah,0;这一步很关键
	mov al,T1
	add al,T2
	AAA
	add ax,3030H
	mov bx,ax
	mov dl,bh
	mov ah,2
	int 21h
	mov dl,bl
	int 21h

	
	mov ah,4ch
	int 21h
code ends
end start