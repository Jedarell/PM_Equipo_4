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
	main9 PROC
		;Logica del Programa

		;LA INSTRUCCION LOOP COMPRUEBA AL REGISTRO ECX
		;Y RALIZA UNA ITERACCION MIENTRAS QUE ECX SEA MAYOR QUE 0
		;--POR CADA ITERACCION ECX DECREMENTA EN 1

		Mov EAX, 10D

		Mov ECX, 5

		ciclo:
			call writedec
			call crlf
		loop ciclo


		exit
	main9 ENDP
	END main9