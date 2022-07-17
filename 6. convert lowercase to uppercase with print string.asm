Title "Write a program that prompts the user to enter a small letter through the keyboard. The Program should read the letter without echo. The program display then a message with the capital equivalent of the letter the user entered through the keyboard"
.model small
.data

    mes1 db 'enter a small case character: ','$'
    mes2 db 'The Character converted to capital case letter is: ','$'
    
    
.code
.startup

    MOV AX,@DATA
    MOV DS,AX
    
    MOV DX, OFFSET mes1
    MOV AH, 09H
    INT 21H
    
    MOV AH,08H
    INT 21H
    
    SUB AL,20H
    MOV BL,AL
    
    MOV DX, OFFSET mes2
    MOV AH, 09H
    INT 21H
    
    MOV DL,BL
    MOV AH,02H
    INT 21H
    
    MOV AH,4CH
    INT 21H
    
END