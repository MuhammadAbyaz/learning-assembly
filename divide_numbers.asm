include "emu8086.inc"

.model small
.stack 100h

.DATA

num1 dw 0
num2 dw 0
result dw 0


.CODE

main PROC
    printn "Enter dividend: "
    
    call scan_num
    mov num1, cx
    
    
    printn "Enter divisor: "
    
    call scan_num
    mov num2, cx
    
           
    mov ax, num1
    mov bx, num2

    div bx
    
    mov result, ax
     
    
    print "Quotient: "
    
    mov ax, result
    call print_num
    
     
    
main ENDP

DEFINE_PRINT_NUM
DEFINE_SCAN_NUM
DEFINE_PRINT_NUM_UNS

END