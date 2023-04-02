.MODEL SMALL
.STACK 100H
.DATA
INPUT DB ?

.CODE

MAIN PROC
    
    MOV AH,1
    INT 21H
    MOV INPUT,AL
    
    CMP AL,1
    JE ADDITION
    JG SUBTRACTION
    
    ADDITION:
    MOV CL,2
    SUB CL,48
    MOV BL,3
    MOV BL,48
    ADD CL,BL
    
    MOV AH,2
    MOV DL,CL
    JMP EXIT
    
    SUBTRACTION:
    MOV AL,4
    MOV BL,3
    SUB AL,BL
    
    SUB AL,48
    
    MOV AH,2
    MOV DL,AL
    JMP EXIT
    
    
    
    EXIT:
    INT 21H
    
    MAIN ENDP
END MAIN