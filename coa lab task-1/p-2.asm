.MODEL SMALL
.STACK 100H
.DATA

.CODE

MAIN PROC
    
    MOV AH,1
    INT 21H
    
    CMP AL,'A'
    JE CARRIAGE_RETURN
    CMP AL,'B'
    JE LINE_FEED
    JMP EXIT
    
    CARRIAGE_RETURN:
    
    MOV AH,2
    MOV DL,13
    JMP EXIT
    
    LINE_FEED:
    
    MOV AH,2
    MOV DL,10
    JMP EXIT
    
    
    EXIT:
    INT 21H
    
    MAIN ENDP
END MAIN