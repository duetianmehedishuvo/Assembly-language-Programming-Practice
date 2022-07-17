Title "Display string using function 09H"
.model small
.stack 100h
.data

message db "Hello world By Shuvo",10,13,'$'
.code
.startup

    MOV DX, OFFSET message  ; copy address of message to dx
    MOV AH,9H               ; String output
    INT 21H                 ; display String
    MOV AH, 4CH             ; exit to DOS
    INT 21H
END