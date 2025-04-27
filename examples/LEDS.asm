CODE SEGMENT
PORTB  EQU 02H
Config EQU 06H
ORG 0
MOV DX, Config
MOV AL, 90H
OUT DX, AL
MOV DX, PORTB

;PUT YOUR CODE HERE
START:  MOV AL, 0FH

j1:     OUT DX, AL
        MOV CX, 0FF00H
        LOOP $
        MOV AL, 0F0H
        OUT DX, AL
        MOV CX, 0FF00H
        LOOP $
        
        JMP  START
        
CODE    ENDS
END