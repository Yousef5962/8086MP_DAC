CODE SEGMENT
PORTA  EQU 00H
Config EQU 06H
ORG 0
MOV DX, Config
MOV AL, 89H
OUT DX, AL
MOV DX, PORTA

;PUT YOUR CODE HERE
START:  XOR AL,AL
        MOV DX, PORTA

J1:     OUT DX, AL ; Output data to DAC0808
        INC AL ; AL+1

        CMP AL,0FFH ; Maximum value (FFH)?
        JNZ J1 ; If not, Jump to J1


J2:     OUT DX, AL ; Output data to DAC0808
        DEC AL ; AL-1
        AND AL,AL ; Minimum Value (00H)?
        JNZ J2 ; If not, Jump to J2
        JMP J1 



CODE ENDS



