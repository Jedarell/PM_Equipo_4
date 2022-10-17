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

cal1_14 db "Calificacion 1:", 0
cal2_14 db "Calificacion 2:", 0
cal3_14 db "Calificacion 3:", 0
cal4_14 db "Calificacion 4:", 0
cal5_14 db "Calificacion 5:", 0
resultado_14 db "Resultado", 0

.code
	mainej6 PROC
		;Logica del Programa
		
		MOV EDX, offset cal1_14
		CALL WRITESTRING
		CALL CRLF

		CALL READINT	
		MOV EBX, EAX	;EN LA PRIMER CALIFICACION SE PASA EL DATO DE EAX A EBX

		MOV EDX, offset cal2_14
		CALL WRITESTRING
		CALL CRLF

		CALL READINT
		ADD EBX, EAX	;DE AQÚI A LA CUARTA CALIF SE SUMAN LOS VALORES INGRESADOS EN EAX Y SE GUARDA EL RESULTADO EN EBX

		MOV EDX, offset cal3_14
		CALL WRITESTRING
		CALL CRLF

		CALL READINT
		ADD EBX, EAX

		MOV EDX, offset cal4_14
		CALL WRITESTRING
		CALL CRLF

		CALL READINT
		ADD EBX, EAX

		MOV EDX, offset cal5_14
		CALL WRITESTRING
		CALL CRLF

		CALL READINT
		ADD EAX, EBX	;EN LA ULTIMA SUMA SE SUMA LO QUE ESTABA EN EBX CON LA ULTIMA CALIF EN EAX PORQUE ES EL REGISTRO EN EL QUE TIENE QUE ESTAR LA SUMATORIA
						;PARA LA DIVISION

		MOV EDX, offset resultado_14
		CALL WRITESTRING
		CALL CRLF
		
		MOV EDX, 0		;SIEMPRE QUE SE VAYA A DIVIDIR EDX DEBE PONERSE EN 0
		MOV EBX, 5		;SE GUARDA 5 EN EBX
		DIV EBX			;SE DIVIDE LA SUMA ENTRE EBX (5)

		CALL WRITEINT
		CALL CRLF

		exit
	mainej6 ENDP
	END mainej6