; Problem: READING A CHARACTER and display it

ORG 0100h
                

.DATA   ;DATA SEGMENT STARTS
    
    

.CODE   ; CODE SEGMENT STARTS

MAIN PROC   ; Initialize Data Segment
    
    ; reading 2 character 
    MOV AH,01H
    INT 21H   ; read first character
    INT 21H   ; read second character
    
    MOV BL,AL  ; save input character into BL
    
    MOV AH,02H ; declear for write operation
    
    ; for new line
    MOV DL,0AH
    INT 21H
    ; for careege return
    MOV DL,0DH
    INT 21H
    
    ; we can show any hard coded character this method or can use direct hexidecimal code like 32h
    MOV DL,'S'
    INT 21H
    
    
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H 
    
    MOV AH,02H  ; display the character stored in BL
    MOV DL,BL
    INT 21H 
    
    
    
    
    MAIN ENDP   ; END PROCEDURE
END MAIN    ;END MAIN
RET ;Return to DOS



