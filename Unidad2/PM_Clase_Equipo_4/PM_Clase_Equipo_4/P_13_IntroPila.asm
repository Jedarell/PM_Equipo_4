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



.code
	main13 PROC
		;Logica del Programa

		MOV ECX, 10

		PUSH ECX

		MOV ECX, 5

		CICLO:

			MOV EAX, ECX
			CALL WRITEDEC
			CALL CRLF

		LOOP CICLO

		POP EAX

		CALL CRLF
		CALL WRITEDEC
		CALL CRLF

		exit
	main13 ENDP
	END main13