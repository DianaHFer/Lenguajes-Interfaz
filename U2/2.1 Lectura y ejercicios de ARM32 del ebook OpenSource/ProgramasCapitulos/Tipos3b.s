// Código del programa tipos3b
//@@ Instituto Tecnologico de Tijuana
//@@ Depto de Sistemas y Computación
//@@ Ing.En Sistemas Computacionales

//@@ Autor : Hernández Fernández Diana @DianaHFer
//@@ Repositorio: https://github.com/DianaHFer/Ejercicios.git
//@@ Fecha de revisión : Viernes 23 de Octubre del 2020.
.data
var1: .asciz " %d\ 012 "

.text
.global _start
_start: push {r4, lr}
		mov r1, #0
		ldr r4, =var1
		mov r0, r4
		bl printf
		mov r0, r4
		mov r1, #1
		bl printf
		mov r0, r4
		mov r1, #2
		bl printf
		mov r0, r4
		mov r1, #3
		bl printf
		mov r0, r4
		mov r1, #4
		pop {r4, lr}
		b printf
