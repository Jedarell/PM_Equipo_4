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

mensaje_10 db "Ingrese un numero", 0
resultado_10 db "Resultado: ", 0
.code
	mainej2 PROC
		;Logica del Programa
		
		MOV EDX, offset mensaje_10		
		CALL WRITESTRING
		CALL CRLF

		CALL READINT					

		MUL EAX							

		MOV EDX, offset resultado_10	
		CALL WRITESTRING
		CALL CRLF

		CALL WRITEINT					

		exit
	mainej2 ENDP
	END mainej2