include "emu8086.inc"

.model small
.stack 100h

.DATA
num1 dw 0                    
num2 dw 0                    
result dw 0                  

.CODE
main PROC
    print "Enter first number: "
    call scan_num
    
    mov dl, 10
    mov ah, 02h
    int 21h
    
    mov dl, 13
    mov ah, 02h
    int 21h
    
    mov num1, cx
    print "Enter second number: "
    call scan_num
    mov num2, cx
    
    mov ax, num1
    add ax, num2
    mov result, ax
    
    mov dl, 10
    mov ah, 02h
    int 21h
    
    mov dl, 13
    mov ah, 02h
    int 21h
    
    mov ax, result
    
    print "Sum: "
    
    call print_num
    
    main ENDP
    
    
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS    
DEFINE_SCAN_NUM 
END