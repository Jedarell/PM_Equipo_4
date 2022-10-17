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

sueldo_13 db "Ingrese el sueldo del trabajador", 0
horas_13 db "Ingrese las horas trabajadas", 0
total_13 db "Total a pagar", 0

.code
	mainej5 PROC
		;Logica del Programa
		
		MOV EDX, offset sueldo_13
		CALL WRITESTRING
		CALL CRLF

		CALL READINT
		MOV EBX, EAX

		MOV EDX, offset horas_13
		CALL WRITESTRING
		CALL CRLF

		CALL READINT
		MUL EBX

		MOV EDX, offset total_13
		CALL WRITESTRING
		CALL CRLF

		CALL WRITEINT
		CALL CRLF

		exit
	mainej5 ENDP
	END mainej5