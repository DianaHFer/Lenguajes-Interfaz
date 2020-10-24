  ![](https://images.cooltext.com/5474824.png)


<a href="http://cooltext.com" target="_top"><img src="https://cooltext.com/images/ct_pixel.gif" width="80" height="15" alt="Cool Text: Logo and Graphics Generator" border="0" /></a>

***Introducción al Ensamblador***
----------------------------------------------------------
En este libro nos habla sobre lo que es un minicomputador Raspberry Pi definiéndolo 
como una placa del tamaño de una tarjeta de crédito,con el objetivo de poder promover
la enseñanza de conceptos sobre la informática en el entorno estudiantil.ARM es considera
una arquitectura de RISC de 32 bits.
La arquitectura ARMv6 presenta un conjunto de 17 registros (16 principales más uno de estado)
de 32 bits cada uno, de los cuales se dividen en los siguiente:

**1.-Registros Generales.** Su función es el almacenamiento temporal de datos. Son los 13 registros
que van R0 hasta R12.

**2.-Registros Especiales.** Son los últimos 3 registros principales: R13, R14 y R15. Como son de 
propósito especial, tienen nombres alternativos.

**3.-Registro CPSR.** Almacena las banderas condicionales y los bits de control. 
Los bits de control definen la habilitación de interrupciones normales (I), interrupciones rápidas
(F), modo Thumb 1 (T) y el modo de operación de la CPU. 

El procesador que maneja es Bi-Endian es decir que puede ser configurable entre Big Endian y Little
Endian,sin embargo existe una regla que dice que el byte menos significativo ocupa la posición más baja.
El ensamblador es un lenguaje de bajo nivel que permite un control directo de
la CPU y todos los elementos asociados cada una de sus líneas contas de una instrucción del procesador y
la posición que dichos datos ocupan de esta instrucción, presenta una serie de ventajas e inconvenientes 
con respecto a otros lenguajes de un nivel más alto, por su bajo nivel cuenta con la flexibilidad y la 
posibilidad de acceso directo a nivel de registro de lo contrario puede ser tedioso el programar en ensamblador.

La principal característica de un módulo fuente en ensamblador es que existe una clara separación entre las instrucciones 
y los datos. La estructura más general de un módulo fuente es:

**Sección de datos:** En esta zona se definen todas las variables que utiliza el programa .

**Sección de código**. Se indica con la directiva .text, y sólo puede contener código o datos no modificables.

**Datos.**

Los datos se pueden representar de distintas maneras:

1.-Decimal.
2.-Hexadecimal.
3.-Binaria.
4.-Octal.

**Símbolos.**

Las macros y las constantes simbólicas son símbolos que pertenece al preprocesador, a diferencia de las etiquetas que pertenecen al ensamblador. Se especifican con las directivas .macro y .equ respectivamente y permiten que el código sea más legible y menos repetitivo. 

**Instrucciones.**

Las instrucciones del as responden al formato general:
Etiqueta : Nemot é cnico Operando / s /* Comentario */

-El Campo etiqueta, si aparece, debe estar formado por una cadena alfanumérica. La cadena no debe comenzar con un dígito y no se puede utilizar como cadena alguna palabra reservada del as ni nombre de registro del microprocesador.

-El Campo Nemotécnico (ldr en el ejemplo) es una forma abreviada de nombrar la instrucción del procesador. Está formado por caracteres alfabéticos (entre 1 y 11 caracteres).

-El Campo Operando/s indica dónde se encuentran los datos.

-El Campo Comentario es opcional.Cada instrucción del as se refiere a una operación que puede realizar el microprocesador.Se pueden agrupar el conjunto de las instrucciones según el tipo de función que  realice el microprocesador, en las siguientes categorías:

-Instrucciones de transferencia de datos.
Mueven información entre registros y posiciones de memoria.

-Instrucciones aritméticas. Realizan operaciones aritméticas sobre números binarios o BCD. Instrucciones de manejo de bits. Realizan operaciones de desplazamiento, rotación y lógicas sobre registros o posiciones de memoria.

-Instrucciones de transferencia de control. Se utilizan para controlar el flujo de ejecución de las instrucciones del programa. 
-Directivas.Las directivas son expresiones que aparecen en el módulo fuente e indican al compilador que realice determinadas tareas en el proceso de compilación.

Las directivas más frecuentes en el as son: 
-Directivas de asignación: Se utilizan para dar valores a las constantes o reservar posiciones de memoria para las variables.

-Directivas de control: .text y .data sirven para delimitar las distintas secciones de nuestro módulo. .align alineamiento es para alinear el siguiente dato, rellenando con ceros, de tal forma que comience en una dirección múltiplos del número que especifiquemos en alineamiento, normalmente potencia de 2.

-Directivas de operando: Se aplican a los datos en tiempo de compilación.

-Directivas de Macros: Una .macro es un conjunto de sentencias en ensamblador (directivas e instrucciones) que pueden aparecer varias veces repetidas en un cbed A. Villena, R. Asenjo, F. Corbera. DAC-UMA. 14 1.1.

Funcionamiento de las instrucciones de desplazamiento y rotación.
Las instrucciones de desplazamiento pueden ser lógicas o aritméticas. Los desplazamientos lógicos desplazan los bit del registro fuente introduciendo ceros (uno o más de uno).Las instrucciones de rotación también se desplazan, pero el bit que sale del valor se realimenta. 


***Tipos de datos y sentencias de alto nivel***
------------------------------------------------------------------------------
En la arquitectura ARM los accesos a memoria se hacen mediante instrucciones específicas ldr y str.. El resto de instrucciones toman operandos desde registros o valores inmediatos, sin excepciones.
-Direccionamiento inmediato. El operando fuente es una constante, formando parte de la instrucción.

-Direccionamiento inmediato con desplazamiento o rotación. Es una variante del anterior en la cual se permiten operaciones intermedias sobre los registros.

-Direccionamiento a memoria, sin actualizar registro puntero. Es la forma más sencilla y admite 4 variantes. 

-Direccionamiento a memoria, actualizando registro puntero. En este modo de direccionamiento, el registro que genera la dirección se actualiza con la propia dirección.

**Punteros.**

Un puntero siempre ocupa 32 bits y contiene una dirección de memoria.

**Vectores.**

Todos los elementos de un vector se almacenan en un único bloque de memoria a partir de una dirección determinada.

**Matrices bidimensionales.**

Una matriz bidimensional de N×M elementos se almacena en un único bloque de memoria.
**Instrucciones de multiplicación**
Las instrucciones de multiplicación admiten muchas posibilidades, debido a que
es una operación en la cual el resultado tiene el doble de bits que cada operando.
En la siguiente tabla vemos las 5 instrucciones de multiplicación que existen.

**Instrucciones de salto.**

Las instrucciones de salto pueden producir saltos incondicionales (b y bx) o saltos condicionales. 

La lista completa de condiciones es : 

EQ (equal, igual). Cuando Z está activo (Z vale 1).

NEQ (not equal, igual). Cuando Z está inactivo (Z vale 0). 

MI (minus, negativo). Cuando N está activo (N vale 1).

PL (plus, positivo o cero). Cuando N está inactivo (N vale 0).

CS/HS (carry set/higher or same, carry activo/mayor o igual). Cuando C está activo(C vale 1).

CC/LO (carry clear/lower, carry inactivo/menor). Cuando C está inactivo (C vale 0).

VS (overlow set, desbordamiento activo). Cuando V está activo (V vale 1). 

VC (overlow clear, desbordamiento inactivo). Cuando V está inactivo (V vale 0).

GT (greater than, mayor en complemento a dos). Cuando Z está inactivo y N=V (Z vale 0, N vale V).

LT (lower than, menor en complemento a dos). Cuando N!=V (N vale not V).

GE (greater or equal, mayor o igual en complemento a dos). Cuando N=V (N valeV). 

LE (lower or equal, menor o igual en complemento a dos). Cuando Z está activo y N!=V (Z vale 1, N vale not V).

HI (higher, mayor). Cuando C está activo y Z inactivo (C vale 1, Z vale 0).

LS (lower or same, menor o igual). Cuando C está inactivo ó Z activo (C vale 0 ó Z vale 1).

**Estructuras de control de alto nivel.**
Las estructuras for y while se pueden ejecutar un mínimo de 0 iteraciones (si la primera vez no se cumple la condición).Para usarlas en ensamblador estas estructuras se utilizan instrucciones de salto condicional. 



