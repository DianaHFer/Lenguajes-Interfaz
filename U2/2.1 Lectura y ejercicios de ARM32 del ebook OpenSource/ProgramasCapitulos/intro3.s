  
//  Código del programa intro3.s
//@@ Instituto Tecnologico de Tijuana
//@@ Depto de Sistemas y Computación
//@@ Ing.En Sistemas Computacionales

//@@ Autor : Hernández Fernández Diana @DianaHFer
//@@ Repositorio: https://github.com/DianaHFer/Ejercicios.git
//@@ Fecha de revisión : Viernes 23 de Octubre del 2020.

.data
var1: .byte 0b00110010
.align
var2: .byte 0b11000000
.align

.text
.global _start

_start: ldr r1, =var1 /* r1 <- & var1 */
		ldrsb r1, [r1] /* r1 <- *r1 */
		ldr r2, =var2 /* r2 <- & var2 */
		ldrsb r2, [r2] /* r2 <- *r2 */
		add r0, r1, r2 /* r0 <- r1 + r2 */
		bx lr

