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
	main14 PROC
		;Logica del Programa
		
		MOV EAX, 10
		MOV EBX, 5

		CALL WRITEDEC

		CALL CRLF

		XCHG EAX, EBX

		CALL WRITEDEC

		exit
	main14 ENDP
	END main14