.org 100h

.DATA

a db ?
b db ?
c db ?

.CODE
main PROC
    mov ax, @DATA
    mov ds, ax
    mov ah, 1
    int 21h
     
    mov a, al
    
    mov dl, 10
    mov ah, 2
    int 21h
    
    mov dl, 13
    int 21h
    
    mov ah, 1
    int 21h
    
    mov b, al
    
    mov dl, 10
    mov ah, 2
    int 21h
    
    mov dl, 13
    int 21h
    
    mov ah, 1
    int 21h
    
    mov c, al
    
    mov dl, 10
    mov ah, 2
    int 21h
    
    mov dl, 13
    int 21h
    
    mov bl, a
    mov cl, b
    mov dh, c
    
    xchg bl, cl
    xchg cl, dh
    
    mov dl, bl
    int 21h 
    mov dl, cl
    int 21h 
    
    mov dl, dh
    int 21h
    
    ret