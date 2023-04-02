.MODEL SMALL
.STACK 100H
.DATA
INPUT DB ?
O DB 'o'
E DB 'e'

.CODE
MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,1
    INT 21H
    
    MOV INPUT,AL
    
    MOV DL,INPUT
    SUB DL,48
    
    CMP DL,1
    JE PRINT_O
    
    CMP DL,3
    JE PRINT_O
    
    MOV AH,2
    MOV DL,E
    JMP EXIT
    
    PRINT_O:
    
    MOV AH,2
    MOV DL,O
    JMP EXIT
    

    EXIT:
    INT 21H
    
    MAIN ENDP
END MAIN