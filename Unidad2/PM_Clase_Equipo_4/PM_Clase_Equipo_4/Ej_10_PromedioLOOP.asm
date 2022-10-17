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

n db "Cuantos numeros se promediaran", 0
resultado db "Resultado", 0
n_valor dword 0
.code
	mainej10 PROC
		;Logica del Programa
		
		MOV EDX, OFFSET n
		CALL WRITESTRING
		CALL CRLF

		CALL READINT
		MOV n_valor, EAX

		MOV ECX, n_valor
		MOV EBX, 0

		CICLO:
		CALL READINT
		ADD EBX, EAX
		LOOP CICLO

		MOV EDX, 0
		MOV EAX, EBX
		DIV n_valor

		CALL WRITEINT
		CALL CRLF

		exit
	mainej10 ENDP
	END mainej10