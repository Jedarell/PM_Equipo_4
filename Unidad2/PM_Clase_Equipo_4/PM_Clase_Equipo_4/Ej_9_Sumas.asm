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

n db "Cuantas sumas se realizaran", 0
numero1 db "Ingrese el primer numero", 0
numero2 db "Ingrese el segundo numero", 0
resultado db "Resultado:", 0

.code
	mainej9 PROC
		;Logica del Programa
	
		MOV EDX, offset n
		CALL WRITESTRING
		CALL CRLF

		CALL READINT
		MOV ECX, EAX

		CICLO:

		MOV EDX, OFFSET numero1
		CALL WRITESTRING
		CALL CRLF

		CALL READINT
		MOV EBX, EAX

		MOV EDX, OFFSET numero2
		CALL WRITESTRING
		CALL CRLF

		CALL READINT
		ADD EAX, EBX

		MOV EDX, OFFSET resultado
		CALL WRITESTRING
		CALL CRLF

		CALL WRITEINT
		CALL CRLF

		LOOP CICLO

		exit
	mainej9 ENDP
	END mainej9