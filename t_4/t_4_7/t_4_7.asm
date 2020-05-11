data segment
	disp db 'Good'
data ends

code segment
assume ds:data,cs:code
	start:
	mov ax,data
	mov ds,ax
	
	mov ax,0b800h
	mov es,ax;??????
	mov al,disp[0]
	mov es:[146h],al
	mov byte ptr es:[147h],1eh
	mov al,disp[1]
	mov es:[148h],al
	mov byte ptr es:[149h],1eh
	mov al,disp[2]
	mov es:[14ah],al
	mov byte ptr es:[14bh],1eh
	mov al,disp[3]
	mov es:[14ch],al
	mov byte ptr es:[14dh],1eh
	mov al,disp[4]
	mov es:[14eh],al
	mov byte ptr es:[14fh],1eh
	mov ah,4ch
	int 21h
code ends
	end start