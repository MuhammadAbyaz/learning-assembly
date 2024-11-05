include "emu8086.inc"

.model small
.stack 100h

.DATA
num1 dw 0
num2 dw 0
result dw 0

.CODE
main PROC
    print "Enter First Number: "
    call scan_num
    mov num1, cx
    
    mov dl, 10
    mov ah, 02h
    int 21h
    
    mov dl, 13
    mov ah, 02h
    int 21h
    
    print "Enter Second Number: "
    
    call scan_num
    mov num2, cx
    
    mov dl, 10
    mov ah, 02h
    int 21h
    
    mov dl, 13
    mov ah, 02h
    int 21h
    
    mov ax, num1
    sub ax, num2
    
    mov result, ax
    
    print "Result is: "
    call print_num
        
main ENDP

DEFINE_PRINT_NUM
DEFINE_SCAN_NUM
DEFINE_PRINT_NUM_UNS

END