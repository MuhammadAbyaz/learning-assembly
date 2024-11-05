include 'emu8086.inc'
.model small
.stack 100h

.CODE

main PROC
    print "enter first number: "
    mov ah, 01h
    int 21h
    
    sub al, 48
    mov bl, al
    
    mov dl, 10
    mov ah, 02h
    int 21h
    
    mov dl, 13
    mov ah, 02h
    int 21h
    
    print "enter second number: "
    mov ah, 01h
    int 21h
    
    sub al, 48
    add bl, al
    
    add bl, 48
    
    mov dl, 10
    mov ah, 02h
    int 21h
    
    mov dl, 13
    mov ah, 02h
    int 21h
    
    mov dl, bl
    mov ah, 02h
    int 21h
    
    main ENDP
END