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

n db "Ingrese n:", 0
resultado db "Resultado", 0
.code
	mainej11 PROC
		;Logica del Programa

		MOV EDX, OFFSET n
		CALL WRITESTRING
		CALL CRLF

		CALL READINT
		CMP EAX, 0
		JE CERO
		MOV ECX, EAX
		SUB ECX, 1

		CICLO:

		MUL ECX

		LOOP CICLO

		JMP CONTINUAR

		CERO:
		MOV EAX, 1

		CONTINUAR:
		MOV EDX, OFFSET resultado
		CALL WRITESTRING
		CALL CRLF

		CALL WRITEINT
		CALL CRLF

		exit
	mainej11 ENDP
	END mainej11