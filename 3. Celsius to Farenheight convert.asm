; Problem: Convert Celsius to Farenheight 

; Convert 260C to Celsius to Fahrenheit using the following expression and store in a variable F: 

    ; F= C*(9/5)+32-1

ORG 0100h
                

.DATA   ;DATA SEGMENT STARTS
    
    CELSIUS DW ?
    B DW 32
    C DW 1
    D DW 5
    E DW 9 
    FARENHEIGHT DW ?
    

.CODE   ; CODE SEGMENT STARTS

MAIN PROC   ; Initialize Data Segment
    
    MOV AX,@DATA
    MOV DS,AX 
    
    
    MOV CELSIUS,260
    MOV AX, CELSIUS
    MUL E
    DIV D
    ADD AX,B
    SUB AX,C
    MOV FARENHEIGHT,AX
    
    
    
    MAIN ENDP   ; END PROCEDURE
END MAIN    ;END MAIN
RET ;Return to DOS