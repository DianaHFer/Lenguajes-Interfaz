// Código del programa tipos3a
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
_start:  push { r4, lr }
		mov r4, #0
.L2: 	mov r1, r4
		ldr r0, =var1
		add r4, r4, #1
		bl printf
		cmp r4, #5
		bne .L2
		pop {r4, pc}
