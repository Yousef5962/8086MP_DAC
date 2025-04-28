CODE SEGMENT
PORTA  EQU 00H
Config EQU 06H
ORG 0
MOV DX, Config
MOV AL, 80H
OUT DX, AL
MOV DX, PORTA

;PUT YOUR CODE HERE
START:  XOR AL,AL
        MOV DX, PORTA

J1:     MOV AL, 4DH
        OUT DX, AL ; Output data to DAC0808
        MOV CX, 0A0H
        LOOP $

J2:     INC AL
        OUT DX, AL
        CMP AL, 80H ; Maximum value (FFH)?
        JNZ J2 ; If not, Jump to J1
        MOV CX, 0A0H
        LOOP $
        
        
J3:     INC AL
        OUT DX, AL
        CMP AL, 0E7H
        JNZ J3
        
J4:     DEC AL
        OUT DX, AL
        CMP AL, 80H
        JNZ J4
        MOV CX, 0A0H
        LOOP $
        
J5:     DEC AL
        OUT DX, AL
        CMP AL, 34H
        JNZ J5

J6:     MOV AL, 80H
        OUT DX, AL
        MOV CX, 140H
        LOOP $
        
        JMP J1              
        

CODE ENDS



