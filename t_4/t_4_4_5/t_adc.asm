data segment
data ends

code segment
assume ds:data,cs:code
start:
mov ax,data
mov ds,ax 

mov dl,0
mov al,0ffh
add al,0ffh
adc dl,0
add dl,30h
mov ah,2
int 21h

mov ah,4ch
int 21h
code ends
end start