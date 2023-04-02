.MODEL SMALL
.STACK 100H
.DATA
MSG DB "ENTER NUMBER: $"
OUTPUT DB "YOU ENTERED: $"
REPEAT DB "YOU WANT TO INPUT AGAIN? (Y/N)"
INPUT DB ?

.CODE

MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    
    ACTION:
    
    LEA DX,MSG
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV INPUT,AL
    
    MOV AH,2
    MOV DL,13
    INT 21H
    
    MOV AH,2
    MOV DL,10
    INT 21H
    
    LEA DX,OUTPUT
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,INPUT
    INT 21H
    
    MOV AH,2
    MOV DL,13
    INT 21H
    
    MOV AH,2
    MOV DL,10
    INT 21H
    
    LEA DX,REPEAT
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    
    CMP AL,'y'
    
    JE ACTION
    
    
    EXIT:
    
    MAIN ENDP
END MAIN