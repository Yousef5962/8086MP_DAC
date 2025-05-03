CODE SEGMENT
PORTA  EQU 00H
Config EQU 06H
ORG 0
MOV DX, Config
MOV AL, 89H
OUT DX, AL
MOV DX, PORTA

;PUT YOUR CODE HERE
START:  MOV AL, 00H
j1:     OUT DX,AL
        INC AL
        CMP AL,0FFH
        JNZ j1                 
        
        JMP START
CODE    ENDS
END