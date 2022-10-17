TITLE Trabajo 1
;DESCRIPCION
;Objetivo: Primera ejecucion de masm

;Autores(s) :
	;	Garcia Ruiz Alejandro H.
	;Semestre: 8vo Semestre ISC
	;FIN DESCRIPCION
	INCLUDE Irvine32.inc
	.data
	;Area de Declaracion de Variables
	cx1_8 db "Ingresa el valor de x1:", 0
	cx2_8 db "Ingresa el valor de x2:", 0
	cresultado_8 db "Resultado", 0

	.code
	main8 PROC
	;Logica del Programa

	MOV EDX, offset cx1_8
	CALL WRITESTRING
	CALL CRLF

	CALL READINT

	MOV EDX, offset cx2_8
	CALL WRITESTRING
	CALL CRLF

	MOV ECX, EAX
	CALL READINT

	MOV EDX, offset cresultado_8
	CALL WRITESTRING
	CALL CRLF

	MUL ECX

	CALL WRITEINT

	exit
	main8 ENDP
	END main8