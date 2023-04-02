.MODEL SMALL
.STACK 100H
.DATA
A DB ?
B DB ?
C DB ?

.CODE

MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,1
    INT 21H
    
    MOV A,AL
    
    MOV AH,1
    INT 21H
    
    MOV B,AL
    
    MOV AH,1
    INT 21H
    
    MOV C,AL
    
    MOV AL,A
    MOV BL,B
    
    CMP AL,BL
    JL A_SMALL
    JMP B_SMALL
    
    A_SMALL:
    MOV A,0
    MOV AL,A
    JMP EXIT
    
    B_SMALL:
    MOV BL,B
    MOV CL,C
    CMP BL,CL
    JL B_MORE_SMALL
    JMP C_SMALL
    
    B_MORE_SMALL:
    MOV B,0
    MOV BL,B
    JMP EXIT
    
    C_SMALL:
    MOV C,0
    MOV CL,0
    JMP EXIT
    
    
    
    EXIT:
    MAIN ENDP
END MAIN