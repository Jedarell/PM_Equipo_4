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

numero_15 db "Ingrese un numero", 0
absoluto_15 db "Valor absoluto", 0

.code
	mainej7 PROC
		;Logica del Programa

		MOV EDX, offset numero_15
		CALL WRITESTRING
		CALL CRLF

		CALL READINT

		MOV EDX, offset absoluto_15
		CALL WRITESTRING
		CALL CRLF

		CMP EAX, 0

		JG POSITIVO

		NEGATIVO:
		NEG EAX

		POSITIVO:
		CALL WRITEINT
		CALL CRLF

		exit
	mainej7 ENDP
	END mainej7