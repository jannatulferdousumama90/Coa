.MODEL SMALL
.STACK 100H
.DATA
C DB "VALUE OF CL: $"
D DB "VALUE OF DL: $"

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,C
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    
    MOV CL,AL
    SUB CL,48
    
    LEA DX,D
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    
    MOV DL,AL
    SUB DL,48
    
    CMP DL,3
    JL D_SMALL
    JMP EXIT
    
    D_SMALL:
    CMP CL,3
    JL PRINT_B
    JMP EXIT
    
    PRINT_B:
    MOV AH,2
    MOV DL,'b'
    JMP EXIT
    
    
    
    EXIT:
    INT 21H
    
    MAIN ENDP
END MAIN