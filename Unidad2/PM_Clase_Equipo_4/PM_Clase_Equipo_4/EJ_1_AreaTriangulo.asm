TITLE Trabajo 1
;DESCRIPCION
;Objetivo: Primera ejecucion de masm

;Autores(s):
	;		Garcia Ruiz Alejandro H.
	; Semestre: 8vo Semestre ISC
	; FIN DESCRIPCION
	INCLUDE Irvine32.inc
	.data
	; Area de Declaracion de Variables

	base_9 db "Ingresa la base:", 0		
	altura_9 db "Ingresa la altura:", 0	
	resultado_9 db "Resultado:", 0
	.code

	mainej1 PROC
	; Logica del Programa
	
	MOV EDX, offset base_9	
	CALL WRITESTRING		
	CALL CRLF				

	CALL READINT			

	MOV EDX, offset altura_9
	CALL WRITESTRING
	CALL CRLF

	MOV EBX, EAX			
	CALL READINT			
	MUL EBX					

	MOV EBX, 2				
	MOV EDX, 0				
	DIV EBX					

	MOV EDX, offset resultado_9
	CALL WRITESTRING
	CALL CRLF

	CALL WRITEINT

	exit
	mainej1 ENDP
	END mainej1