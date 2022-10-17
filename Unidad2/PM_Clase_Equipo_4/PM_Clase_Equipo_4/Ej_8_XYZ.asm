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

inx_16 db "Ingrese el valor de X", 0
iny_16 db "Ingrese el valor de X", 0
inz_16 db "Ingrese el valor de X", 0
resultado_16 db "Resultado", 0
mayor_16 db "X + Y ES MAYOR QUE Z"
igual_16 db "X + Y ES IGUAL QUE Z"
menor_16 db "X + Y ES MENOR QUE Z"
.code
	mainej8 PROC
		;Logica del Programa

		MOV EDX, offset inx_16
		CALL WRITESTRING
		CALL CRLF

		CALL READINT
		MOV EBX, EAX

		MOV EDX, offset iny_16
		CALL WRITESTRING
		CALL CRLF

		CALL READINT
		ADD EBX, EAX

		MOV EDX, offset inz_16
		CALL WRITESTRING
		CALL CRLF

		CALL READINT

		CMP EBX, EAX

		JG MAYOR
		JE IGUAL
		JL MENOR

		MAYOR:
		MOV EDX, offset mayor_16
		JMP FINAL

		IGUAL:
		MOV EDX, offset igual_16
		JMP FINAL
		
		MENOR:
		MOV EDX, offset menor_16
		
		FINAL:
		CALL WRITESTRING
		CALL CRLF

		exit
	mainej8 ENDP
	END mainej8