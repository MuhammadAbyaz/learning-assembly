.org 100h

.CODE
main PROC
    mov ah, 1 ; Setting ah to 1 to take input
    int 21h   ; first interrupt for 1st value
    
    mov bl, al
    
    int 21h   ; second interrupt
    
    mov bh, al
    
    int 21h   ; third interrupt
    
    mov cl, al
    
    int 21h   ; fourth interrupt
    
    mov ch, al
    
    mov ah, 2  ; Setting ah to 2 to display the output
    
    mov dl, 10
    int 21h
    
    mov dl, 13
    int 21h
    
    mov dl, ch
    int 21h

    mov dl, cl
    int 21h
    
    mov dl, bh
    int 21h
    
    mov dl, bl
    int 21h
    
    ret