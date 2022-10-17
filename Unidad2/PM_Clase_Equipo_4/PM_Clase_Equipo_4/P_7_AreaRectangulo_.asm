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
cbase_7 db "Ingresa la base:",0
caltura_7 db "Ingresa la altura:",0
cresultado_7 db "Resultado",0

.code
	main7 PROC
		;Logica del Programa
		
		MOV EDX, offset cbase_7
		CALL WRITESTRING
		CALL CRLF

		CALL READINT

		MOV EDX, offset caltura_7
		CALL WRITESTRING
		CALL CRLF

		MOV ECX, EAX
		CALL READINT

		MOV EDX, offset cresultado_7
		CALL WRITESTRING
		CALL CRLF

	    MUL ECX

		CALL WRITEINT

		exit
	main7 ENDP
	END main7