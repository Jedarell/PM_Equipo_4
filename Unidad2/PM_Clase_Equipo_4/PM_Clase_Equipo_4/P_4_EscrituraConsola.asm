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

cadena_4 db "Mensaje en Consola",0

.code
	main4 PROC
		;Logica del Programa

		MOV EDX, OFFSET cadena_4
		CALL WRITESTRING

		exit
	main4 ENDP
	END main4