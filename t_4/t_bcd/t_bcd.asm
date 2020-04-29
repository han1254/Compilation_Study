;测试压缩BCD码
data segment
	info db 'press bcd+ answer:$'
	info2 db 0ah,0dh,'press bcd- answer:bye!$'
	press_a db 05H
	press_b db 07H
	press_c db 62H
	press_d db 38H
data ends

code segment
assume ds:data,cs:code
start:
	mov ax,data
	mov ds,ax
	mov al,press_a
	add al,press_b
	daa
	mov dx,offset info
	mov ah,9h
	int 21h
	add al,30h
	mov dl,al
	mov ah,2
	int 21h
	
	
	mov dx,offset info2
	mov ah,09h
	int 21h
	mov al,press_c
	sub al,press_d
	das
	;输出不出来，11点了，我不玩了，淦
	;mov ah,0
	;mov bl,8
	;div bl
	;add ax,3030h
	;mov dl,al
	;mov ah,2
	;int 21h
	;mov dl,ah
	;mov ah,2
	;int 21h
	
	;mov ah,0
	;AAA
	;add ax,3030h
	;mov bx,ax
	;mov dl,bl
	;mov ah,2
	;int 21h
	;mov dl,bh
	;int 21h
	
	mov ah,4ch
	int 21h
	
	
code ends
end start