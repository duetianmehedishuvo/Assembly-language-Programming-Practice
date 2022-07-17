ORG 0100h


.DATA   ;DATA SEGMENT STARTS
    
    A DW 11
    B DW 4
    SUM DW ?
    DIFFERENCE DW ?
    MULTIPLICATION DW ?
    DIVISION DW ?
    

.CODE   ; CODE SEGMENT STARTS

MAIN PROC   ; Initialize Data Segment
    
    MOV AX,@DATA
    MOV DS,AX
    
    ; FOR ADDTION
    
    MOV AX,A
    ADD AX,B
    MOV SUM,AX  
    
    ; FOR SUBTRACTION
    
    MOV AX,A
    SUB AX,B 
    MOV DIFFERENCE,AX
    
    ; FOR MULTIPLICATION
    
    MOV AX,A
    MUL B
    MOV MULTIPLICATION,AX
    
    ; FOR DIVISION
    
    MOV AX,A
    DIV B
    MOV DIVISION,AX
    
    
    
    
    
    
    MAIN ENDP   ; END PROCEDURE
END MAIN    ;END MAIN
RET ;Return to DOS