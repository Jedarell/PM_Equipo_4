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

INGRESE DB "Ingrese un numero:", 0
SIGNO_MUL DB "X", 0
SIGNO_IGUAL DB "=", 0
CONTADOR DWORD 0
.code
	mainej12 PROC
		;Logica del Programa

		;SE IMPRIME LA SOLICITUD DEL NUMERO
		MOV EDX, OFFSET INGRESE
		CALL WRITESTRING
		CALL CRLF

		;SE LEE EL NUMERO Y SE PASA A EBX
		CALL READINT
		MOV EBX, EAX

		;SE ESTABLECE EL NUMERO DE ITERACIONES DEL LOOP
		MOV ECX, 10


		CICLO:

			INC CONTADOR
			
			CALL WRITEDEC

			MOV EDX, OFFSET SIGNO_MUL
			CALL WRITESTRING

			MOV EAX, CONTADOR
			CALL WRITEDEC

			MOV EDX, OFFSET SIGNO_IGUAL
			CALL WRITESTRING

			MOV EAX, EBX
			MUL CONTADOR
			CALL WRITEDEC
			CALL CRLF

			MOV EAX, EBX

		LOOP CICLO

		exit
	mainej12 ENDP
	END mainej12