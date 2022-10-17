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
cNumero1_5 db "Ingresa numero 1:",0
cNumero2_5 db "Ingresa numero 2:",0
cResultado_5 db "Resultado",0
.code
	main5 PROC
		;Logica del Programa
		
		MOV EDX, offset cNumero1_5
		CALL WRITESTRING
		CALL CRLF
		CALL READINT
		MOV EBX, EAX

		MOV EDX, offset cNumero2_5
		CALL WRITESTRING
		CALL CRLF
		CALL READINT

		ADD EAX, EBX

		MOV EDX, offset cResultado_5
		CALL WRITESTRING
		CALL CRLF
		CALL WRITEINT

		exit
	main5 ENDP
	END main5