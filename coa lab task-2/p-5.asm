.MODEL small
.STACK 100h

.CODE
MAIN PROC
    MOV AH, 01h     
    INT 21h

    MOV BL, AL      
    MOV AH, 02h     
    MOV CX, 30      

PRINT_LOOP:
    MOV DL, BL      
    INT 21h         
    DEC CX          ; 

    
    CMP CX, 0
    JE EXIT_PROGRAM  
    MOV AH, 02h
    CMP CX, 20
    JE PRINT_NEWLINE
    CMP CX, 10
    JE PRINT_NEWLINE
    JMP CONTINUE_LOOP

PRINT_NEWLINE:
    MOV DL, 0Dh
    INT 21h
    MOV DL, 0Ah
    INT 21h
    JMP continue_loop

continue_loop:
    JMP print_loop  

exit_program:
    ; exit program
    MOV AH, 4Ch
    INT 21h
main ENDP

END main
