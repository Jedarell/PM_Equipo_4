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
	main1 PROC
		;Logica del Programa
		;saltos incondicionales ------> JMP

		MOV EAX, 10
		MOV EBX, 5 

		JMP SALIR

		ADD EAX, EBX

		SALIR:
			CALL writedec
			CALL crlf

		exit
	main1 ENDP
	END main1