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

dividendo_2 dword 2
.code
	main2 PROC
		;Logica del Programa
		;checar si un numero es par

		MOV EAX, 15	;eax contiene al numero que se va a checar si es par

		MOV EDX, 0

		DIV dividendo_2

		CMP EDX, 0

		MOV EAX, 1

		JNZ CAMBIA_VALOR_EAX

		JMP CONTINUAR

		CAMBIA_VALOR_EAX:
		MOV EAX, 0

		CONTINUAR:
		
		CALL WRITEDEC
		CALL CRLF

		exit
	main2 ENDP
	END main2