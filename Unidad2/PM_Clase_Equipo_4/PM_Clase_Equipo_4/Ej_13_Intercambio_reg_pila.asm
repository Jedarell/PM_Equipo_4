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

.code
	mainej13 PROC
		;Logica del Programa
		
		;SE ASIGNAN 10 Y 5 A EAX Y EBX RESPECTIVAMENTE
		MOV EAX, 10
		MOV EBX, 5
		;SE ENVIA EL CONTENIDO DE EAX A LA PILA
		PUSH EAX

		;SE ENVIA EL CONTENIDO DE EBX A EAX
		MOV EAX, EBX

		;SE ENVIA EL CONTENIDO DE LA PILA A EBX
		POP EBX



		exit
	mainej13 ENDP
	END mainej13