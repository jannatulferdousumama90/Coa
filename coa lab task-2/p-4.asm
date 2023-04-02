.MODEL small
.STACK 100h

.CODE
MAIN PROC
    MOV AH,2     ;
    MOV DL,'A'    
    MOV CX,30      ; Set loop counter to print 30 times

PRINT_LOOP:
    INT 21h         ; Call interrupt to print the character
    LOOP PRINT_LOOP ; Decrement the loop counter and repeat until CX=0

    MOV AH, 4Ch     
    INT 21h         
MAIN ENDP

END MAIN
