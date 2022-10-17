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

base_11 db "Ingrese la base del rectangulo:", 0
altura_11 db "Ingrese la altura del rectangulo:", 0
resultado_11 db "Resultado", 0

.code
	mainej3 PROC
		;Logica del Programa

		MOV EDX, offset base_11	
		CALL WRITESTRING
		CALL CRLF

		CALL READINT	
		MOV EBX, EAX	

		MOV EDX, offset altura_11
		CALL WRITESTRING
		CALL CRLF

		CALL READINT	
		ADD EAX, EBX	

		MOV EBX, 2		
		MUL EBX		

		MOV EDX, offset resultado_11
		CALL WRITESTRING
		CALL CRLF

		CALL WRITEINT
		
		exit
	mainej3 ENDP
	END mainej3