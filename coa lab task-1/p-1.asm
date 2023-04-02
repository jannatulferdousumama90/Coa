.MODEL SMALL
.STACK 100H
.DATA

.CODE

MAIN PROC
    
    MOV AH,1
    INT 21H
    
    CMP AL,'A'
    
    JE PRINT_5
    
    MOV CL,6
    ADD CL,48
    MOV AH,2
    MOV DL,CL
    JMP EXIT
    
    PRINT_5:
    MOV CL,5
    ADD CL,48
    MOV AH,2
    MOV DL,CL
    JMP EXIT
    
    
    
    EXIT:
    INT 21H
    
    MAIN ENDP
END MAIN
