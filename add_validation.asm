include "emu8086.inc"

.model small
.stack 100h

.CODE 

main PROC
    print "Enter first number: "
    mov ah, 01h
    int 21h
    
    cmp al, "0"
    jl below_block
    
    cmp al, "9"
    jg above_block
    
    sub al, 48
    mov bl, al
    
    mov dl, 10
    mov ah, 02h
    int 21h
    
    mov dl, 13
    mov ah, 02h
    int 21h
    
    print "Enter second number: "
    mov ah, 01h
    int 21h
    
    cmp al, "0"
    jl below_block
    
    cmp al, "9"
    jg above_block
    
    sub al, 48
    
    add bl, al
    
    mov dl, 10
    mov ah, 02h
    int 21h
    
    mov dl, 13
    mov ah, 02h
    int 21h
    
    add bl, 48
                
    print "Sum: "
    mov dl, bl
    mov ah, 02h
    int 21h
    
    mov ah, 4Ch
    int 21h
    
           
below_block:

    mov dl, 10
    mov ah, 02h
    int 21h
    
    mov dl, 13
    mov ah, 02h
    int 21h
    
    print "Invalid Value! Enter value greater than 0"
    mov ah, 4Ch
    int 21h
    
above_block:

    mov dl, 10
    mov ah, 02h
    int 21h
    
    mov dl, 13
    mov ah, 02h
    int 21h
    
    print "Invalid Value! Enter value less than 9"
    mov ah, 4Ch
    int 21h
    
main ENDP
END