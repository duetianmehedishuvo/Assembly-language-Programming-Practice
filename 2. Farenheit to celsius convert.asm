; Problem: Convert Farenheight to Celsius 

; Convert 1000 F to Celsius using the following expression and store in a variable C: 

    ; C= (F-32)* 5/9+1

ORG 0100h
                

.DATA   ;DATA SEGMENT STARTS
    
    FARENHEIGHT DW ?
    B DW 32
    C DW 1
    D DW 5
    E DW 9 
    CELSIUS DW ?
    

.CODE   ; CODE SEGMENT STARTS

MAIN PROC   ; Initialize Data Segment
    
    MOV AX,@DATA
    MOV DS,AX 
    
    
    MOV FARENHEIGHT,1000
    MOV AX, FARENHEIGHT
    SUB AX,B
    MUL D
    DIV E
    ADD AX,C
    MOV CELSIUS,AX
    
    
    
    MAIN ENDP   ; END PROCEDURE
END MAIN    ;END MAIN
RET ;Return to DOS