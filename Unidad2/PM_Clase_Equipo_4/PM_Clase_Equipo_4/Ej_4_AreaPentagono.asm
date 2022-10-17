TITLE Trabajo 1
;DESCRIPCION
;Objetivo: Primera ejecucion de masm

;Autores(s):
;		Garcia Ruiz Alejandro H.
;Semestre: 8vo Semestre ISC
;FIN DESCRIPCION
INCLUDE Irvine32.inc
.data
;Area de Declaracion de Variables

lado_12 db "Ingrese la longitud de un lado del pentagono:", 0
apotema_12 db "Ingrese el apotema del pentagono:", 0
resultado_12 db "Resultado", 0

.code
	mainej4 PROC
		;Logica del Programa

		MOV EDX, offset lado_12
		CALL WRITESTRING
		CALL CRLF

		CALL READINT	
		MOV EBX, 5		
		MUL EBX			
		MOV EBX, EAX	

		MOV EDX, offset apotema_12
		CALL WRITESTRING
		CALL CRLF

		CALL READINT	
		MUL EBX			

		MOV EDX, offset resultado_12
		CALL WRITESTRING
		CALL CRLF

		MOV EBX, 2	
		MOV EDX, 0
		DIV EBX

		CALL WRITEINT
		CALL CRLF

		exit
	mainej4 ENDP
	END mainej4