---
editor_options:
  markdown:
    wrap: 72
output:
  pdf_document: default
  word_document: default
---

# Programación Practica en Python

## Sección 0: Configuración y descripción general del curso

¡Bienvenido a Programación Practica de Python! Esta página contiene
información importante sobre la configuración y la logística del curso.

### Duración del curso y requisitos de tiempo

Este curso se impartió originalmente como una capacitación presencial
dirigida por un instructor que duró de 3 a 4 días. Para completar el
curso en su totalidad, debe planificar un mínimo de 25 a 35 horas de
trabajo. La mayoría de los participantes encuentran que el material es
bastante desafiante sin echar un vistazo al código de la solución (ver a
continuación).

### Configuración e instalación de Python

No necesita nada más que una instalación básica de Python 3.6 o
posterior. No hay dependencia de ningún sistema operativo, editor, IDE o
herramientas adicionales relacionadas con Python en particular. No hay
dependencias de terceros.

Dicho esto, la mayor parte de este curso implica aprender a escribir
**scripts** y pequeños programas que involucran la lectura de datos de
archivos. Por lo tanto, debe asegurarse de estar en un entorno en el que
pueda trabajar fácilmente con archivos. Esto incluye el uso de un editor
para crear programas Python y poder ejecutar esos programas desde el
cmd/shell/terminal.

-   IMPORTANTE: En adelante los términos `cmd`,`shell`,`terminal` se
    utilizaran indeistintamente con el mismo significado.

Es posible que te sientas inclinado a trabajar en este curso utilizando
un entorno más interactivo, como Jupyter Notebooks. **¡NO LO
RECOMIENDO!** Aunque los cuadernos son excelentes para la
experimentación, muchos de los ejercicios de este curso enseñan
conceptos relacionados con la organización de programas. Esto incluye
trabajar con funciones, módulos, declaraciones de importación y
refactorización de programas cuyo código fuente abarca varios archivos.
En mi experiencia, es difícil replicar este tipo de entorno de trabajo
en cuadernos.

### Bifurcación/clonación del repositorio del curso

Para preparar tu entorno para el curso, te recomiendo crear tu propia
bifurcación del repositorio de GitHub del curso en
<https://github.com/dabeaz-course/practical-python>. Una vez que hayas
terminado, puedes clonarlo en tu máquina local:

```         
bash % git clone https://github.com/yourname/practical-python
bash % cd practical-python
bash %
```

Haz todo tu trabajo dentro del directorio `practical-python/`. Si envías
el código de tu solución a tu bifurcación del repositorio, esto
mantendrá todo tu código junto en un solo lugar y tendrás un buen
registro histórico de tu trabajo cuando hayas terminado.

Si no quieres crear una bifurcación personal o no tienes una cuenta de
GitHub, aún puedes clonar el directorio del curso en tu máquina:

```         
bash % git clone https://github.com/dabeaz-course/practical-python```
bash % cd practical-python```
bash %
```

Con esta opción, no podrás confirmar cambios en el código excepto en la
copia local en tu máquina.

### Diseño del trabajo del curso

Realiza todo tu trabajo de codificación en el directorio `Work/`. Dentro
de ese directorio, hay un directorio `Data/`. El directorio `Data/`
contiene una variedad de archivos de datos y otros scripts utilizados
durante el curso. Con frecuencia tendrás que acceder a archivos ubicados
en `Data/`. Los ejercicios del curso se escriben asumiendo que estás
creando programas en el directorio `Work/`.

### Orden del curso

El material del curso debe completarse en el orden de las secciones,
comenzando con la sección 1. Los ejercicios del curso en las secciones
posteriores se basan en el código escrito en las secciones anteriores.
Muchos de los ejercicios posteriores implican una refactorización menor
del código existente.

### Código de la solución

El directorio `Solutions/` contiene el código de la solución completa
para los ejercicios seleccionados. No dude en consultarlo si necesita
una pista. Sin embargo, para aprovechar al máximo el curso, debe
intentar crear sus propias soluciones primero.

## Sección 1: Introducción a Python

El objetivo de esta primera sección es presentar algunos conceptos
básicos de Python desde cero. Comenzando desde cero, aprenderá a editar,
ejecutar y depurar programas pequeños. Finalmente, escribirá un script
breve que lea un archivo de datos CSV y realice un cálculo simple.

-   [1.1 Introducción a Python](01_Python.md)
-   [1.2 Un primer programa](02_Hello_world.md)
-   [1.3 Números](03_Numbers.md)
-   [1.4 Strings](04_Strings.md)
-   [1.5 Listas](05_Lists.md)
-   [1.6 Archivos](06_Files.md)
-   [1.7 Funciones](07_Functions.md)

### 1.1 Python

#### ¿Qué es Python?

Python es un lenguaje de programación interpretado de alto nivel. A
menudo se clasifica como una ["lenguaje de
script"](https://en.wikipedia.org/wiki/Scripting_language) y se
considera similar a lenguajes como Perl, Tcl o Ruby. La sintaxis El
lenguaje Python está vagamente inspirado en elementos de la programación
C.

Python fue creado por Guido van Rossum alrededor de 1990, quien lo
nombró en honor a Monty Python.

#### ¿Dónde conseguir Python?

[Python.org](https://www.python.org/) es donde puedes obtener Python.
Para los propósitos de este curso, usted sólo necesita una instalación
básica. Recomiendo instalar Python 3.6 o más reciente. En las notas se
utiliza Python 3.6 y soluciones.

#### ¿Por qué se creó Python?

En palabras del creador de Python:

> Mi motivación original para crear Python fue la necesidad percibida
> para un lenguaje de nivel superior en el proyecto Amoeba [Sistemas
> Operativos]. Me di cuenta de que el desarrollo de la administración de
> sistemas. Las utilidades en C estaban tardando demasiado. Además,
> hacer estas cosas en el shell Bourne no funcionaría por diversas
> razones. ... Entonces, había una necesidad de un lenguaje que pudiera
> cerrar la brecha entre C y el shell.
>
> -   
>
>     #### *Guido van Rossum*

#### ¿Dónde está Python en mi máquina?

Aunque existen muchos entornos en los que puedes ejecutar Python, Python
normalmente se instala en su máquina como un programa que se ejecuta
desde el cmd, la terminal o shell de comandos. Desde la terminal,
deberías estar capaz de escribir 'python' de esta manera:

```         
bash % python
Python 3.11.7 | packaged by Anaconda, Inc. | (main, Dec 15 2023, 18:05:47) [MSC v.1916 64 bit (AMD64)] on win32
Type "help", "copyright", "credits" or "license" for more information.
>>>
>>> print("hola mundo")
Hola Mundo
>>>
```

Si no tienes experiencia en el uso del cmd, el shell o una terminal,
probablemente deberías detenerte aquí, examina un breve tutorial sobre
CMD, shell o terminal y luego regresa.

Aunque existen muchos entornos que no son de shell donde puedes
codificar Python, serás un programador de Python más fuerte si eres
capaz de ejecutar, depurar e interactúar con Python en la terminal. Este
es el entorno nativo de Python. Si puedes usar Python aquí, podrás
usarlo en cualquier otro lugar.

#### Ejercicios

##### Ejercicio 1.1: Uso de Python como calculadora

En su máquina, inicie Python y úselo como calculadora para resolver el
problema. siguiente problema.

> Lucky Larry compró 75 acciones de Google a un precio de 235,14 dólares
> por acción. Hoy, las acciones de Google cotizan a 711,25 dólares.
> Usando Python Modo interactivo como calculadora, averigüe cuánta
> ganancia obtendría Larry. ¿Qué haría si vendiera todas sus acciones?

```         
>>> (711,25 - 235,14) * 75
35708.25
>>>
```

Consejo profesional: utilice la variable de guión bajo `_` para utilizar
el resultado del último cálculo. Por ejemplo, \>¿cuánto beneficio
obtiene Larry después que su malvado corredor se lleva ùna comisión del
20%?

```         
>>> _ * 0,80
28566.600000000002
>>>
```

##### Ejercicio 1.2: Obtener ayuda

Utilice el comando `help()` para obtener ayuda sobre la función `abs()`.
Luego usa `help()` para obtener ayuda sobre la función `round()`.
Escriba `help()` simplemente, sin ningún valor para ingresar al visor de
ayuda interactivo.

Una advertencia con `help()`: no funciona para Python básico.
Declaraciones como `for` `if`, `while`, etc. (es decir, si escribe
`help(for)` obtendrá un error de sintaxis). Puedes intentar poner el
tema del que requiere ayuda entre comillas como `help('for')` en su
lugar. Si eso no funciona, tendrás que recurrir a una búsqueda en
Internet.

Seguimiento: Vaya a (<http://docs.python.org>) y busque la documentación
para la función `abs()` (pista: se encuentra en la referencia de la
biblioteca relacionada con funciones integradas).

##### Ejercicio 1.3: Cortar y pegar

Este libro está estructurado como una serie de páginas donde se le
recomienda probar ejemplos de código Python interactivos
**escribiendo**. Si estás aprendiendo Python por primera vez, se
aconseja este "enfoque lento". Tendrás una mejor idea del lenguaje
disminuyendo la velocidad, escribiendo cosas y pensando en ¿Qué estás
haciendo?

Si debe "cortar y pegar" ejemplos de código, seleccione el código
comenzando después del indicador `>>>` y llegando hasta, pero no más
allá que la primera línea en blanco o el siguiente mensaje `>>>` (el que
aparezca primero), seleccione "copiar" desde el navegador, vaya a la
ventana de Python y seleccione "pegar" para copiarlo en el shell de
Python. Para conseguir que el código se ejecute, es posible que tengas
que presionar "Intro" una vez que lo hayas pegado.

Utilice cortar y pegar para ejecutar las declaraciones de Python en esta
sesión:

```         
>>> 12 + 20
32
>>> (3 + 4 + 5 + 6)
18
>>> for i in range(5):
        print(i)

0
1
2
3
4
>>>
```

**Advertencia**: nunca es posible pegar más de un comando de Python
(declaraciones que aparecen después de `>>>`) al shell básico de Python
. Tienes que pegar cada comando uno a la vez.

Ahora que ya has hecho esto, recuerda que obtendrás más provecho del
libro escribiendo el código lentamente y pensando en él, no cortando y
pegando.

### 1.2 Un primer programa

En esta sección se analiza la creación de su primer programa y su
ejecución, intérprete y algo de depuración básica.

#### Ejecución de Python

Los programas de Python siempre se ejecutan dentro de un intérprete.

El intérprete es una aplicación "basada en consola" que normalmente se
ejecuta desde un shell de comandos.

```         
bash % python
Python 3.11.7 | packaged by Anaconda, Inc. | (main, Dec 15 2023, 18:05:47) [MSC v.1916 64 bit (AMD64)] on win32
Type "help", "copyright", "credits" or "license" for more information.
>>>
```

Los programadores expertos generalmente no tienen problemas para
utilizar el intérprete de esta manera, pero no es tan fácil de usar para
principiantes. Es posible que estés usando un entorno que proporciona
una interfaz diferente a Python. Está bien, pero aprender a ejecutar la
terminal Python sigue siendo una habilidad útil.

#### Modo interactivo

Cuando inicias Python, obtienes un modo *interactivo* donde puedes
experimentar.

Si comienza a escribir declaraciones, se ejecutarán inmediatamente. No
hay ciclo de edición/compilación/ejecución/depuración.

```         
>>> print('hola mundo')
Hola Mundo
>>> 37*42
1554
>>> para i en rango(5):
...imprimir(i)
...
0
1
2
3
4
>>>
```

Este llamado *bucle de lectura-evaluación-impresión* (o REPL) es muy
útil para la depuración y la exploración.

**DETENTE**: Si no puede entender cómo interactuar con Python, detenga
lo que esté haciendo y descubra cómo hacerlo. Si está utilizando un
Entorno de Desarrollo Integrado (o IDE), es posible que esté oculto
detrás de una Opción de menú u otra ventana. Muchas partes de este curso
asumen que puedes Interactuar con el intérprete.

Echemos un vistazo más de cerca a los elementos del REPL:

-   `>>>` es el indicador del intérprete para iniciar una nueva
    declaración.
-   `...` es el mensaje del intérprete para continuar una declaración.
    Ingrese una línea en blanco para terminar de escribir y ejecutar lo
    que ha ingresado.

El mensaje `...` puede aparecer o no según su entorno. Para este curso,
Se muestra en blanco para facilitar cortar y pegar ejemplos de código.

El guión bajo `_` contiene el último resultado.

``` python
>>> 37 * 42
1554
>>> _ * 2
3108
>>> _ + 50
3158
>>>
```

*Esto sólo es cierto en el modo interactivo.* Nunca uses `_` en un
programa.

#### Creando programas

Los programas se colocan en archivos `.py`.

``` python
# hola.py
print('hola mundo')
```

Puedes crear estos archivos con tu editor de texto favorito.

#### Programas en ejecución

Para ejecutar un programa, ejecútelo en la terminal con el comando
`python`. Por ejemplo, en la línea de comandos de Unix:

``` bash
bash % python hola.py
Hola Mundo
bash %
```

O desde el shell de Windows:

```         
C:\AlgunaCarpeta>hola.py
Hola Mundo

C:\AlgunaCarpeta>c:\python36\python hello.py
Hola Mundo
```

Nota: En Windows, es posible que deba especificar una ruta completa al
intérprete de Python, como `c:\python36\python`. Sin embargo, si Python
está instalado de su forma habitual, es posible que puedas simplemente
escribir el nombre del programa. como por ejemplo `hello.py`.

#### Un programa de muestra

Resolvamos el siguiente problema:

> Una mañana, sales y colocas un billete de un dólar en la acera junto a
> la Torre Sears en Chicago. Cada día siguiente, colocas el doble de
> billetes. ¿Cuánto tiempo tarda la pila de billetes en superar la
> altura de la torre?

Aquí hay una solución:

``` python
#sears.py
espesor_de_billete = 0.11 * 0.001 # Metros (0,11 mm)
altura_torre = 442 # Altura (metros)
num_billetes = 1
dia= 1

while num_billetes * espesor_de_billete < altura_torre:
    print(dia, num_billetes, num_billetes * espesor_de_billete)
    dia = dia + 1
    num_billetes = num_billetes * 2

print('Número de días', dia)
print('Número de billetes', num_billetes)
print('Altura final', num_billetes * espesor_de_billete)
```

Cuando lo ejecutas, obtienes el siguiente resultado:

```         
bash % python sears.py
1 1 0,00011
2 2 0,00022
3 4 0,00044
4 8 0,00088
5 16 0,00176
6 32 0,00352
...
21 1048576 115.34336
22 2097152 230.68672
Número de días 23
Número de billetes 4194304
Altura final 461.37344
```

Usando este programa como guía, podrás aprender una serie de conceptos
básicos importantes sobre Python.

#### Declaraciones

Un programa Python es una secuencia de declaraciones:

```         
a = 3 + 4
b = a * 2
print(b)
```

Cada declaración termina con una nueva línea. Las declaraciones se
ejecutan una tras otra hasta que el control llega al final del archivo.

#### Comentarios

Los comentarios son texto que no se ejecutará.

```         
a = 3 + 4
#Esto es un comentario
b = a * 2
print(b)
```

Los comentarios se indican con `#` y se extienden hasta el final de la
línea.

#### Variables

Una variable es un nombre para un valor. Puedes utilizar letras
(minúsculas y, minúsculas y mayúsculas) de la a a la z. Además del
carácter de subrayado `_`, los números también pueden ser parte del
nombre de una variable, excepto que se trate del primer caracter.

```         
altura = 442 # válido
_height = 442 # válido
altura2 = 442 # válido
2height = 442 # no válido
```

#### Tipos

No es necesario declarar las variables con el tipo del valor. El tipo
está asociado con el valor del lado derecho, no con el nombre de la
variable.

```         
altura = 442 # Un entero
altura = 442.0 # Punto flotante
altura = 'Muy alto' # Una cadena
```

Python está tipado dinámicamente. El "tipo" percibido de una variable
podría cambiar a medida que se ejecuta un programa dependiendo del valor
actual asignado a ella.

#### Sensibilidad a mayúsculas y minúsculas

Python distingue entre mayúsculas y minúsculas. Las letras mayúsculas y
minúsculas se consideran letras diferentes. Todas estas son variables
diferentes:

```         
nombre = 'Jake'
Nombre = 'Elwood'
NOMBRE = 'Guido'
```

Las declaraciones del lenguaje siempre están en minúsculas.

```         
while x < 0: # OK
WHILE x < 0: # ERROR
```

#### Bucle

La instrucción `while` ejecuta un bucle.

```         
while num_billetes * espesor_de_billete < altura_torre:
    print(dia, num_billetes, num_billetes * espesor_de_billete)
    dia = dia + 1
    num_billetes = num_billetes * 2

print('Numero de días', día)
```

Las declaraciones sangradas debajo del `while` se ejecutarán siempre que
la expresión después del `while` sea `true`.

#### Sangría

La sangría se utiliza para indicar grupos de declaraciones que van
juntas. Consideremos el ejemplo anterior:

```         

while num_billetes * espesor_de_billete < altura_torre:
    print(dia, num_billetes, num_billetes * espesor_de_billete)
    dia = dia + 1
    num_billetes = num_billetes * 2

print('Numero de días', día)
```

La sangría agrupa las siguientes declaraciones como operaciones que se
repiten:

```         
    print(dia, num_billetes, num_billetes * espesor_de_billete)
    dia = dia + 1
    num_billetes = num_billetes * 2
```

Debido a que la declaración `print()` al final no está sangrada, no
pertenece al bucle. La línea vacía es solo para legibilidad. No afecta
la ejecución.

#### Prácticas recomendadas de sangría

-   Utilice espacios en lugar de tabulaciones.
-   Utilice 4 espacios por nivel.
-   Utilice un editor compatible con Python.

El único requisito de Python es que la sangría esté dentro del mismo
bloque. Se consistente. Por ejemplo, esto es un error:

```         
while num_billetes * espesor_de_billete < altura_torre:
    print(dia, num_billetes, num_billetes * espesor_de_billete)
        dia = dia + 1 # ERROR
    num_billetes = num_billetes * 2
```

#### Condicionales

La declaración `if` se utiliza para ejecutar una condición:

```         
if a > b:
    print('La computadora dice que no')
else:
    print('La computadora dice que si')
```

Puede comprobar múltiples condiciones agregando comprobaciones
adicionales mediante `elif`.

```         
if a > b:
    print('La computadora dice que no')
elif a == b:
    print('La computadora dice que sí')
else:
    print('La computadora dice tal vez')
```

#### Impresión

La función `print` produce una sola línea de texto con los valores
pasados.

```         
print('¡Hola mundo!') # Imprime el texto '¡Hola mundo!'
```

Puedes utilizar variables. El texto impreso será el valor de la
variable, no el nombre.

```         
x = 100
print(x) # Imprime el texto '100'
```

Si pasa más de un valor a `print` se separan con espacios.

```         
nombre = 'Jake'
print('Mi nombre es', nombre) # Imprime el texto 'Mi nombre es Jake'
```

`print()` siempre pone una nueva línea al final.

```         
print('Hola')
print('Mi nombre es', 'Jake')
```

Esto imprime:

```         
Hola
Mi nombre es Jake.
```

El carácter de nueva línea adicional se puede suprimir:

```         
print('Hola', fin=' ')
print('Mi nombre es', 'Jake')
```

Este código ahora imprimirá:

```         
Hola, mi nombre es Jake.
```

#### Entrada del usuario

Para leer una línea de entrada escrita por el usuario, utilice la
función `input()`:

```         
nombre = input('Ingrese su nombre:')
print('Tu nombre es', nombre)
```

`input` imprime un mensaje para el usuario y devuelve su respuesta. Esto
es útil para programas pequeños, ejercicios de aprendizaje o depuración
simple. No se utiliza mucho para programas reales.

#### declaración `pass`

A veces es necesario especificar un bloque de código vacío. Para ello se
utiliza la palabra clave `pass`.

```         
if a > b:
    pass
else:
    print('La computadora dice falso')
```

Esto también se llama declaración de "no operación". No hace nada, sirve
como marcador de posición para declaraciones que posiblemente se
agregarán más adelante.

#### Ejercicios

Este es el primer conjunto de ejercicios en los que debes crear archivos
Python y ejecutarlos. A partir de este momento, se asume que usted están
editando archivos en el directorio `practical-python/Work/`. Para ayudar
a ubicar el lugar adecuado, hay varios archivos de inicio vacíos, que se
han creado con los nombres de archivo apropiados. Busque el archivo
`Work/bounce.py` que se utiliza en el primer ejercicio.

##### Ejercicio 1.5: La pelota que rebota

> Se deja caer una pelota de goma desde una altura de 100 metros y cada
> vez que golpea el suelo, rebota hasta 3/5 de la altura desde la que
> cayó. Escribir un programa `bounce.py` que imprime una tabla que
> muestra la altura de la primeros 10 rebotes.

Su programa debería crear una tabla que se parezca a esto:

```         
1 60,0
2 36,0
3 21.5999999999999998
4 12.9599999999999999
5 7.7759999999999999
6 4.66559999999999995
7 2.799359999999996
8 1.6796159999999998
9 1.0077695999999998
10 0,6046617599999998
```

*Nota: Puedes limpiar un poco la salida si usas la función round().
Intente usarlo para redondear la salida a 4 dígitos.*

```         
1 60,0
2 36,0
3 21.6
4 12,96
5 7.776
6 4.6656
7 2.7994
8 1.6796
9 1.0078
10 0,6047
```

##### Ejercicio 1.6: Depuración

El siguiente fragmento de código contiene código del problema de la
Torre Sears. También tiene un error.

``` python
#sears.py
espesor_de_billete = 0.11 * 0.001 # Metros (0,11 mm)
altura_torre = 442 # Altura (metros)
num_billetes = 1
dia= 1

while num_billetes * espesor_de_billete < altura_torre:
    print(dia, num_billetes, num_billetes * espesor_de_billete)
    dia = dias + 1
    num_billetes = num_billetes * 2

print('Número de días', dia)
print('Número de billetes', num_billetes)
print('Altura final', num_billetes * espesor_de_billete)
```

Copie y pegue el código que aparece arriba en un nuevo programa llamado
`sears.py`. Cuando ejecute el código, recibirá un mensaje de error que
se provoca. El programa se bloquea así:

```         
Traceback (most recent call last):
  File "c:\Users\Mario\practical-python\Exercises\Ex1_6.py", line 11, in <module>
    día = días + 1
          ^^^^
NameError: name 'días' is not defined. Did you mean: 'día'?
```

La lectura de mensajes de error es una parte importante del código
Python. Si su programa se bloquea, la última línea del mensaje de
seguimiento es la verdadera razón por la que el programa falló. Encima
de eso, deberías ver un fragmento del código fuente y luego un nombre de
archivo identificativo y un número de línea.

*¿En qué línea está el error?* ¿Cuál es el error? \* Arreglar el error
\* Ejecutar el programa exitosamente

### 1.3 Números

En esta sección se tratan los cálculos matemáticos.

#### Tipos de números

Python tiene 4 tipos de números:

-   Booleanos
-   Números enteros
-   Punto flotante
-   Complejos (números imaginarios)

##### Booleanos (bool)

Los valores booleanos tienen dos valores: "Verdadero" y "Falso".

```         
a = True
b = False
```

Numéricamente, se evalúan como números enteros con valor «1», «0».

```         
c = 4 + True # 5
d = False
if d == 0:
    print('d es falso')
```

*Pero no escribas código así. Sería extraño.*

##### Números enteros (int)

Valores con signo, de tamaño y base arbitrarios:

```         
a = 37
b = -299392993727716627377128481812241231
c = 0x7fa8 # Hexadecimal
d = 0o253 # Octal
e = 0b10001111 # Binario
```

Operaciones comunes:

```         
x + y Sumar
x - y Restar
x * y Multiplicar
x / y Divide (produce un flotante)
x // y División de piso (produce un entero)
x % y Módulo (resto)
x ** y Potencia
x << n Desplazamiento de bit a la izquierda
x >> n Desplazamiento de bit a la derecha
x & y AND bit a bit
y | y OR bit a bit
x ^ y XOR bit a bit
~x Bit a bit NO
abs(x) Valor absoluto
```

##### Punto flotante (float)

Utilice una notación decimal o exponencial para especificar un valor de
punto flotante:

```         
a = 37,45
b = 4e5 # 4 x 10**5 o 400.000
c = -1,345e-10
```

Los flotantes se representan como doble precisión utilizando la
representación nativa de CPU [IEEE
754](https://en.wikipedia.org/wiki/IEEE_754). Esto es lo mismo que el
tipo `double` en el lenguaje de programación C.

-   17 dígitos de precisión
-   Exponente de -308 a 308

Tenga en cuenta que los números de punto flotante son inexactos cuando
se representan decimales.

```         
>>> a = 2.1 + 4.2
>>> a == 6.3
False
>>> a
6.3000000000000001
>>>
```

Este **no es un problema de Python**, sino el hardware de punto flotante
subyacente en la CPU.

Operaciones comunes:

```         
x + y Sumar
x - y Restar
x * y Multiplicar
Dividir x/y
x // y División de piso
x % y Módulo
x ** y Potencia
abs(x) Valor absoluto
```

Estos son los mismos operadores que los números enteros, excepto los
operadores bit a bit.

Funciones matemáticas adicionales se encuentran en el módulo 'math'.

```         
import math
a = math.sqrt(x)
b = math.sin(x)
c = math.cos(x)
d = math.tan(x)
e = math.log(x)
```

#### Comparaciones

Los siguientes operadores de comparación/relacionales funcionan con
números:

```         
x < y Menor que
x <= y Menor o igual que
x > y Mayor que
x >= y Mayor o igual que
x == y Igual a
x != y No es igual a
```

Puedes formar expresiones booleanas más complejas usando

`and`, `or`, `not`

A continuación se muestran algunos ejemplos:

```         
if b >= a and b <= c:
    print('b está entre a y c')
if not (b < a or b > c):
    print('b todavía está entre a y c')
```

#### Conversión de números

El nombre del tipo se puede utilizar para convertir valores:

```         
a = int(x) # Convertir x a entero
b = float(x) # Convertir x a float
```

Pruébalo.

```         
>>> a = 3.14159
>>> int(a)
3
>>> b = '3.14159' # También funciona con strings que contienen números
>>> float(b)
3.14159
>>>
```

### Ejercicios

Recordatorio: Estos ejercicios suponen que estás trabajando en el
directorio `practical-python/Work`. Mira el archivo `mortgage.py`.

#### Ejercicio 1.7: La hipoteca de Dave

> Dave ha decidido contratar una hipoteca a tipo fijo a 30 años por
> 500.000 dólares. con Guido’s Mortgage, Stock Investment, and Bitcoin
> trading corporation. La tasa de interés es del 5% y el pago mensual es
> \$2684.11.

Aquí hay un programa que calcula la cantidad total que tendrá Dave a
pagar durante la vida de la hipoteca:

```         
#hipoteca.py
capital = 500000.0
tasa = 0.05
cuota = 2684.11
total_pagado = 0.0

while capital > 0:
    capital = capital * (1 + tasa/12) - cuota
    total_pagado += cuota
    
print('Total pagado', round(total_pagado, 2))  
```

Ingrese a este programa y ejecútelo. Debería obtener una respuesta de
`Total pagado 966279.6`.

#### Ejercicio 1.8: Pagos extra

Supongamos que Dave paga \$1000 extra al mes durante los primeros 12
meses de la hipoteca.

Modifique el programa para incorporar este pago adicional y haga que
imprima el monto total pagado junto con el número de meses requeridos.

Al ejecutar el nuevo programa, debería informar
`Total pagado 929965.62 # de cuotas 342`

#### Ejercicio 1.9: Calculadora para realizar un pago adicional

Modificar el programa para que la información de pago adicional pueda
manejarse de forma más general. Haga que el usuario pueda configurar
estas variables:

```         
pago_extra = 1000
pago_extra_mes_inicial = 61
pago_extra_mes_final = 108
```

Haga que el programa tome estas variables y calcule el total a pagar.

¿Cuánto pagará Dave si paga \$1000 adicionales al mes durante 4 años a
partir de que ya se hayan pagado los primeros cinco años?

#### Ejercicio 1.10: Hacer una tabla

Modifique el programa para imprimir una tabla que muestre el mes, el
total pagado hasta el momento y el capital restante. El resultado
debería verse así:

```         
1 2684.11 499399.22
2 5368,22 498795,94
3 8052.33 498190
4 10736,44 497581,83
5 13420.55 496970.98
...
308 874705.88 3478.83
309 877389.99 809.21
310 880074.1 -1871.53
Total pagado 880074.1
Meses 310
```

#### Ejercicio 1.11: Bonificación

Mientras esté en ello, arregle el programa para corregir el pago en
exceso que ocurrió en el último mes.

#### Ejercicio 1.12: Un misterio

`int()` y `float()` se pueden usar para convertir números. Por ejemplo,

```         
>>> int("123")
123
>>> flotante("1.23")
1.23
>>>
```

Con esto en mente, ¿puedes explicar este comportamiento?

```         
>>> bool("False")
True
>>>
```

### 1.4 Strings

Esta sección presenta formas de trabajar con texto.

-   IMPORTANTE: Las palabras `strings` y `cadena` son utilizadas con el
    mismo significado\*

#### Representación de texto literal

Los literales de cadena se escriben en programas con comillas.

```         
# Comillas simples
a = 'Sí, pero no, pero sí, pero...'

# Comillas dobles
b = "la computadora dice que no"

# Comillas triples
c = ''' 
Mírame a los ojos, mírame a los ojos, a los ojos, a los ojos, a los ojos,
No alrededor de los ojos, no mires alrededor de los ojos, mírame a los ojos, estás debajo.
'''
```

Normalmente, los strings solo pueden abarcar una única línea. Las
comillas triples capturan todo el texto encerrado en varias líneas,
incluido todo el formato.

No hay diferencia entre usar comillas simples `'` o dobles `"`.

*Sin embargo, se debe usar el mismo tipo de comillas utilizadas para
iniciar una cadena para terminarla*.

#### Códigos de escape de cadenas

Los códigos de escape se utilizan para representar caracteres de control
y caracteres que no se pueden escribir fácilmente directamente en el
teclado. A continuación se muestran algunos códigos de escape comunes:

```         
'\n' Salto de línea
'\r' Retorno de carro
'\t' Tabulador
'\'' Comilla simple literal
'\"' Comillas dobles literales
'\\' Barra invertida literal
```

#### Representación de cadena

Cada carácter de una cadena se almacena internamente como un denominado
*punto de código* Unicode, que es un número entero. Puede especificar un
valor de punto de código exacto utilizando las siguientes secuencias de
escape:

```         
a = '\xf1' # a = 'ñ'
b = '\u2200' # b = '∀'
c = '\U0001D122' # c = '𝄢'
d = '\N{PARA TODOS}' # d = '∀'
```

La [base de datos de caracteres Unicode](https://unicode.org/charts) es
una referencia para todos los códigos de caracteres disponibles.

#### Indexación de strings

Los strings funcionan como una matriz para acceder a caracteres
individuales. Se utiliza un índice entero, que comienza en 0. Los
índices negativos especifican una posición relativa al final del string.

```         
a = 'Hola mundo'
b = a[0] # 'H'
c = a[4] # ''
d = a[-1] # 'o' (fin de la cadena)
```

También puedes cortar o seleccionar substrings especificando un rango de
índices con `:`.

```         
d = a[:5] # 'Hola'
e = a[6:] # 'mundo'
f = a[3:8] # 'a mun'
g = a[-5:] # 'mundo'
```

El carácter del índice final no está incluido. Los índices faltantes
suponen el principio o el final de la cadena.

#### Operaciones con cadenas

Concatenación, longitud, membresía y replicación.

```         
# Concatenación (+)
a = 'Hola' + 'Mundo' # 'HolaMundo'
b = 'Decir ' + a # 'Decir HolaMundo'

# Longitud (len)
s = 'Hola'
número(s) # 4

# Prueba de membresía (`in`, `not in`)
t = 'o' in s # True
f = 'x' en s # False
g = 'hola' no está en s # True

# Replicación (s * n)
rep = s * 5 # 'HolaHolaHolaHolaHola'
```

#### Métodos de cadena

Los strings tienen métodos que realizan varias operaciones con los datos
de los mismos.

Ejemplo: eliminar cualquier espacio en blanco inicial o final.

```         
s = ' Hola '
t = s.strip() # 'Hola'
```

Ejemplo: Conversión de mayúsculas y minúsculas.

```         
s = 'Hola'
l = s.lower() # 'hola'
u = s.upper() # 'HOLA'
```

Ejemplo: Reemplazar texto.

```         
s = 'Hola mundo'
t = s.replace('Hola' , 'Hello') # 'Hello mundo'
```

**Más métodos de String:**

Las cadenas tienen una amplia variedad de otros métodos para probar y
manipular los datos de texto. Esta es una pequeña muestra de métodos:

```         
s.endswith(suffix) # Verifica si la cadena termina con sufijo
s.find(t) # Primera aparición de t en s
s.index(t) # Primera aparición de t en s
s.isalpha() # Comprueba si los caracteres son alfabéticos
s.isdigit() # Comprueba si los caracteres son numéricos
s.islower() # Verifica si los caracteres están en minúsculas
s.isupper() # Verifica si los caracteres están en mayúsculas
s.join(slist) # Unir una lista de cadenas usando s como delimitador
s.lower() # Convertir a minúsculas
s.replace(old,new) # Reemplazar texto
s.rfind(t) # Busca t desde el final de la cadena
s.rindex(t) # Busca t desde el final de la cadena
s.split([delim]) # Divide la cadena en una lista de subcadenas
s.startswith(prefix) # Verifica si la cadena comienza con prefijo
s.strip() # Elimina los espacios iniciales y finales
s.upper() # Convertir a mayúsculas
```

#### Mutabilidad de los strings

Los strings son "inmutables" o de sólo lectura. Una vez creado, el valor
no se puede cambiar.

```         
>>> s = 'Hola mundo'
>>> s[1] = 'a'
Traceback (most recent call last):
  File "<python-input-5>", line 1, in <module>
    s[1] = 'a'
    ~^^^
TypeError: 'str' object does not support item assignment
>>>
```

**Todas las operaciones y métodos que manipulan datos de strings,
siempre crean nuevos strings.**

#### Conversiones de strings

Utilice `str()` para convertir cualquier valor en un string. El
resultado es un string que contiene el mismo texto que habría sido
producido por la declaración `print()`.

```         
>>> x = 42
>>> str(x)
'42'
>>>
```

#### Cadenas de bytes

Una cadena de bytes de 8 bits, que se encuentra comúnmente en E/S de
bajo nivel, se escribe de la siguiente manera:

```         
datos = b'Hola mundo\r\n'
```

Al colocar una b minúscula antes de la primera comilla, especifica que
se trata de una cadena de bytes y no de una cadena de texto.

La mayoría de las operaciones de cadena habituales funcionan.

```         
len(datos) # 12
datos[0:4] # b'Hola'
datos.replace(b'Hola', b'Cruel') # b'Mundo Cruel\r\n'
```

La indexación es un poco diferente porque devuelve valores de bytes como
números enteros.

```         
data[0] # 72 (código ASCII para 'H')
```

Conversión a/desde cadenas de texto.

```         
texto = datos.decode('utf-8') # bytes -> texto
datos = texto.encode('utf-8') # texto -> bytes
```

El argumento "utf-8" especifica una codificación de caracteres. Otros
valores comunes incluyen "ascii" y "latin1".

#### Stings sin procesar

Los strings sin formato son literales de strings con una barra invertida
no interpretada. Ellos se especifican anteponiendo la comilla inicial
con una "r" minúscula.

```         
>>> rs = r'c:\newdata\test' # Sin formato (barra invertida no interpretada)
>>> rs
'c:\\newdata\\prueba'
```

Los strings son el texto literal incluido en el interior, exactamente
como se escribe. Esto es útil en situaciones donde la barra invertida
tiene un significado especial. Ejemplo: nombre de archivo, expresiones
regulares, etc.

#### f-strings

Una cadena con sustitución de expresión formateada.

```         
>>> nombre = 'IBM'
>>> acciones = 100
>>> precio = 91.1
>>> a = f'{nombre:>10s} {acciones:10d} {precio:10.2f}'
>>> a
'IBM 100 91.10'
>>> b = f'Costo = ${acciones*precio:0.2f}'
>>>b
'Costo = $9110.00'
>>>
```

**Nota: Esto requiere Python 3.6 o más reciente.** El significado de los
códigos de formato se trata más adelante.

### Ejercicios

En estos ejercicios, experimentará con operaciones en el tipo de cadena
de Python. Debes hacer esto en el indicador interactivo de Python, donde
podrás ver fácilmente los resultados.

> Nota importante:
>
> En ejercicios en los que se supone que debes interactuar con el
> intérprete, `>>>` es el mensaje de solicitud del intérprete que
> aparece cuando Python desea que escriba una nueva declaración. Algunas
> afirmaciones en el ejercicio abarcan varias líneas: para que se
> ejecuten estas instrucciones, es posible que tenga que presionar
> 'Enter' unas cuantas veces. Solo un recordatorio de que NO debes
> escribir el `>>>` al trabajar estos ejemplos.

Comience por definir una cadena que contenga una serie de símbolos
bursátiles como este:

```         
>>>
>>> symbols = 'AAPL,IBM,MSFT,YHOO,SCO'
>>>
```

#### Ejercicio 1.13: Extracción de caracteres individuales y subcadenas

Las cadenas son matrices de caracteres. Intente extraer algunos
caracteres:

```         
>>> symbols[0]
?
>>> symbols[1]
?
>>> symbols[2]
?
>>> symbols[-1] # Último carácter
?
>>> symbols[-2] # Los índices negativos son desde el final de la cadena
?
>>>
```

En Python, las cadenas son de solo lectura.

Verifique esto intentando cambiar el primer carácter de 'symbols' a una
'a' minúscula.

```         
>>> symbols[0] = 'a'
Traceback (most recent call last):
  File "<python-input-10>", line 1, in <module>
    symbols[0] = 'a'
    ^^^^^^^
NameError: name 'symbols' is not defined
>>> 
```

#### Ejercicio 1.14: Concatenación de cadenas

Aunque los datos de cadena son de solo lectura, siempre puedes reasignar
una variable a una cadena recién creada.

Pruebe la siguiente declaración que concatena un nuevo símbolo "GOOG" a
El final de los \`symbols':

```         
>>> symbols = symbols + 'GOOG'
>>> symbols
'AAPL,IBM,MSFT,YHOO,SCOGOOG'
>>>
```

¡Ups! Eso no es lo que querías. Arréglelo para que la variable `symbols`
contenga el valor `'AAPL,IBM,MSFT,YHOO,SCO,GOOG'`.

```         
>>> symbols = ?
>>> symbols
'AAPL,IBM,MSFT,YHOO,SCO,GOOG'
>>>
```

Añade 'HPQ' al principio de la cadena:

```         
>>> symbols = ?
>>> symbols
'HPQ,AAPL,IBM,MSFT,YHOO,SCO,GOOG'
>>>
```

En estos ejemplos, podría parecer que se está modificando la cadena
original, en una aparente violación del principio de que las cadenas son
de solo lectura. No es así. Las operaciones sobre cadenas crean una
cadena completamente nueva cada vez. Cuando se reasigna el nombre de la
variable `symbols`, apunta a la cadena recién creada. Posteriormente la
cadena vieja se destruye porque ya no se utiliza.

#### Ejercicio 1.15: Prueba de pertenencia (prueba de subcadenas)

Experimente con el operador `in` para comprobar si hay subcadenas. En
modo interactivo: pruebe estas operaciones:

```         
>>> 'IBM' in symbols
?
>>> 'AA' in symbols
True
>>> 'CAT' in symbols
?
>>>
```

*¿Por qué la verificación de `'AA'` devolvió `True`?*

#### Ejercicio 1.16: Métodos de cadena

En el modo interactivo de Python, intente experimentar con algunos de
los métodos de cadena.

```         
>>> symbols.lower()
?
>>> symbols
?
>>>
```

Recuerde, las cadenas siempre son de solo lectura. Si desea guardar el
resultado de una operación, debe colocarlo en una variable:

```         
>>> lowersyms = símbolos.lower()
>>>
```

Pruebe algunas operaciones más:

```         
>>> symbols.find('MSFT')
?
>>> symbols[13:17]
?
>>> symbols = symbols.replace('SCO','DOA')
>>> symbols
?
>>> name = '   IBM   \n'
>>> name = name.strip() # Eliminar los espacios en blanco circundantes
>>> name
?
>>>
```

#### Ejercicio 1.17: f-string

A veces quieres crear una cadena e incrustar los valores de variables en
ella.

Para hacer esto, utiliza una f-string. Por ejemplo:

```         
>>> name = 'IBM'
>>> shares = 100
>>> price = 91.1
>>> f'{shares} acciones de {name} a ${price:0.2f}'
'100 acciones de IBM a $91.10'
>>>
```

Modifique el programa `mortgage.py` del [Ejercicio 1.1] usando
f-strings. Intente hacer que la salida esté bien alineada.

#### Ejercicio 1.18: Expresiones regulares

Una limitación de las operaciones de cadenas básicas es que no admiten
ningún tipo de coincidencia de patrones avanzada. Para ello, es
necesario recurrir al módulo `re` de Python y a las expresiones
regulares.

El manejo de expresiones regulares es un tema amplio, pero aquí hay un
breve ejemplo:

```         
>>> texto = 'Hoy es 27/3/2018. Mañana es 28/03/2018.'
>>> # Encuentra todas las ocurrencias de una fecha
>>> import re
>>> re.findall(r'\d+/\d+/\d+', texto)
['27/3/2018', '28/3/2018']
>>> # Reemplazar todas las apariciones de una fecha con texto de reemplazo
>>> re.sub(r'(\d+)/(\d+)/(\d+)', r'\3-\1-\2', texto)
'Hoy es 2018-27-3. Mañana es 2018-28-03.'
>>>
```

Para obtener más información sobre el módulo `re`, consulte la
documentación oficial en
[https://docs.python.org/library/re.html](https://docs.python.org/3/library/re.html).

#### Comentario

A medida que comienza a experimentar con el intérprete, a menudo desea
saber más sobre las operaciones admitidas por los diferentes objetos.
Por ejemplo, ¿cómo saber qué operaciones están disponibles en una
cadena?

Dependiendo de su entorno de Python, es posible que pueda ver una lista
de métodos disponibles mediante la función de completar tabulaciones.
Por ejemplo, intenta escribir esto:

```         
>>> s = 'hola mundo'
>>> s.<tecla de tabulación>
>>>
```

Si presionar la tecla `tab` no hace nada, puedes recurrir a la función
incorporada `dir()`. Por ejemplo:

```         
>>> s = 'hola'
>>> dir(s)
['__add__', '__class__', '__contains__', '__delattr__', '__dir__', '__doc__', '__eq__', '__format__', '__ge__', '__getattribute__', '__getitem__', '__getnewargs__', '__getstate__', '__gt__', '__hash__', '__init__', '__init_subclass__', '__iter__', '__le__', '__len__', '__lt__', '__mod__', '__mul__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__rmod__', '__rmul__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', 'capitalize', 'casefold', 'center', 'count', 'encode', 'endswith', 'expandtabs', 'find', 'format', 'format_map', 'index', 'isalnum', 'isalpha', 'isascii', 'isdecimal', 'isdigit', 'isidentifier', 'islower', 'isnumeric', 'isprintable', 'isspace', 'istitle', 'isupper', 'join', 'ljust', 'lower', 'lstrip', 'maketrans', 'partition', 'removeprefix', 'removesuffix', 'replace', 'rfind', 'rindex', 'rjust', 'rpartition', 'rsplit', 'rstrip', 'split', 'splitlines', 'startswith', 'strip', 'swapcase', 'title', 'translate', 'upper', 'zfill']
>>> 
```

`dir()` produce una lista de todas las operaciones que pueden aparecer
después de `(.)`. Utilice el comando `help()` para obtener más
información sobre una operación específica:

```         
help(s.upper)
Help on built-in function upper:

upper() method of builtins.str instance
    Return a copy of the string converted to uppercase.

>>>
```

Devuelve una copia de la cadena `s` convertida a mayúsculas.

## 1.5 Listas

Esta sección presenta las listas, el tipo principal de Python para
almacenar una colección ordenada de valores.

#### Creando una lista

Utilice corchetes para definir una lista literal:

```         
names = [ 'Elwood', 'Jake', 'Curtis' ]
nums = [ 39, 38, 42, 65, 111]
```

A veces las listas se crean mediante otros métodos. Por ejemplo, una
cadena se puede dividir en una lista usando el método `split()`:

```         
>>> linea = 'GOOG,100,490.10' # sin tilde
>>> fila = linea.split(',')
>>> fila
['GOOG', '100', '490.10']
>>>
```

#### Operaciones de lista

Las listas pueden contener elementos de cualquier tipo. Agregue un nuevo
elemento usando `append()`:

```         
>>> names.append('Murphy') # Agrega al final
>>> names.insert(2, 'Aretha') # Inserta en el medio
>>> names
['Elwood', 'Jake', 'Aretha', 'Curtis', 'Murphy']
```

Utilice `+` para concatenar listas:

```         
s = [1, 2, 3]
t = ['a', 'b']
s + t    # [1, 2, 3, 'a', 'b']
```

Las listas se indexan mediante números enteros. Empezando desde 0.

```         
names = [ 'Elwood', 'Jake', 'Curtis' ]

names[0]  # 'Elwood'
names[1]  # 'Jake'
names[2]  # 'Curtis'
```

Los índices negativos cuentan desde el final.

```         
names[-1] # 'Curtis'
```

Puede cambiar cualquier elemento de una lista.

``` python
names[1] = 'Joliet Jake'
names                     # [ 'Elwood', 'Joliet Jake', 'Curtis' ]
```

Longitud de la lista.

``` python
names = ['Elwood','Jake','Curtis']
len(names)  # 3
```

Prueba de membresía (`in`, `not in`).

``` python
'Elwood' in names       # True
'Britney' not in names  # True
```

Replicación (`s * n`).

``` python
s = [1, 2, 3]
s * 3   # [1, 2, 3, 1, 2, 3, 1, 2, 3]
```

#### Iteración y búsqueda de listas

Utilice `for` para iterar sobre el contenido de la lista.

``` python
for name in names:
    # use name
    # e.g. print(name)
    ...
```

Esto es similar a una declaración 'foreach' de otros lenguajes de
programación.

Para encontrar la posición de algo rápidamente, utilice `index()`.

``` python
names = ['Elwood','Jake','Curtis']
names.index('Curtis')   # 2
```

Si el elemento está presente más de una vez, `index()` devolverá el
índice de la primera aparición.

Si no se encuentra el elemento, se generará una excepción 'ValueError'.

#### Eliminación de lista

Puede eliminar elementos por valor de elemento o por índice:

``` python
# Usando el valor
names.remove('Curtis')

# Usando el índice
del names[1]
```

Quitar un elemento no crea un agujero. Otros elementos se moverán hacia
abajo para llenar el espacio dejado vacante. Si hay más de una
ocurrencia del elemento, `remove()` eliminará solo la primera
ocurrencia.

#### Ordenación de listas

Las listas se pueden ordenar "en el lugar" ("in-place").

``` python
s = [10, 1, 7, 3]
s.sort() # [1, 3, 7, 10]

# Orden inverso
s = [10, 1, 7, 3]
s.sort(reverse=True) # [10, 7, 3, 1]

# Funciona con cualquier dato ordenado
s = ['foo', 'bar', 'spam']
s.sort() # ['bar', 'foo', 'spam']
```

Utilice `sorted()` si desea crear una nueva lista:

``` python
t = sorted(s)            # s sin cambios, t contiene valores ordenados
```

#### Listas y matemáticas

*Precaución: Las listas no fueron diseñadas para operaciones
matemáticas.*

``` python
>>> nums = [1, 2, 3, 4, 5]
>>> nums * 2
[1, 2, 3, 4, 5, 1, 2, 3, 4, 5]
>>> nums + [10, 11, 12, 13, 14]
[1, 2, 3, 4, 5, 10, 11, 12, 13, 14]
```

Específicamente, las listas no representan vectores/matrices como en
MATLAB, Octave, R, etc. Sin embargo, existen algunos paquetes que pueden
ayudarte con eso (por ejemplo, [numpy](https://numpy.org)).

### Ejercicios

En este ejercicio, experimentamos con el tipo de datos de lista de
Python. En la última sección, trabajaste con cadenas que contenían
símbolos bursátiles.

``` python
>>> symbols = 'HPQ,AAPL,IBM,MSFT,YHOO,DOA,GOOG'
```

Divídalo en una lista de nombres utilizando la operación `split()` de
cadenas:

``` python
>>> symlist = symbols.split(',')
```

#### Ejercicio 1.19: Extracción y reasignación de elementos de lista

Pruebe algunas búsquedas:

``` python
>>> symlist[0]
'HPQ'
>>> symlist[1]
'AAPL'
>>> symlist[-1]
'GOOG'
>>> symlist[-2]
'DOA'
>>>
```

Intente reasignar un valor:

``` python
>>> symlist[2] = 'AIG'
>>> symlist
['HPQ', 'AAPL', 'AIG', 'MSFT', 'YHOO', 'DOA', 'GOOG']
>>>
```

Tome algunas rebanadas:

``` python
>>> symlist[0:3]
['HPQ', 'AAPL', 'AIG']
>>> symlist[-2:]
['DOA', 'GOOG']
>>>
```

Crea una lista vacía y agrégale un elemento.

``` python
>>> mysyms = []
>>> mysyms.append('GOOG')
>>> mysyms
['GOOG']
```

Puede reasignar una parte de una lista a otra lista. Por ejemplo:

``` python
>>> symlist[-2:] = mysyms
>>> symlist
['HPQ', 'AAPL', 'AIG', 'MSFT', 'YHOO', 'GOOG']
>>>
```

Al hacer esto, la lista del lado izquierdo (`symlist`) se redimensionará
según corresponda para que encaje en el lado derecho (`mysyms`). Por
ejemplo, en el ejemplo anterior, los dos últimos elementos de `symlist`
fueron reemplazados por el único elemento de la lista `mysyms`.

#### Ejercicio 1.20: Recorrer los elementos de la lista

El bucle `for` funciona recorriendo los datos de una secuencia, como por
ejemplo una lista. Compruébelo escribiendo el siguiente bucle y
observando lo que sucede:

``` python
>>> for s in symlist:
        print('s =', s)
# Mire la salida
```

#### Ejercicio 1.21: Pruebas de pertenencia

Utilice el operador `in` o `not in` para comprobar si `'AIG'`, `'AA'` y
`'CAT'` están en la lista de símbolos.

``` python
>>> # Está 'AIG' en `symlist`?
True
>>> # Está 'AA' en `symlist`?
False
>>> # NO Está 'CAT' en `symlist`?
True
>>>
```

#### Ejercicio 1.22: Añadir, insertar y eliminar elementos

Utilice el método `append()` para agregar el símbolo `'RHT'` al final de
`symlist`.

``` python
>>> # append 'RHT'
>>> symlist
['HPQ', 'AAPL', 'AIG', 'MSFT', 'YHOO', 'GOOG', 'RHT']
>>>
```

Utilice el método `insert()` para insertar el símbolo `'AA'` como el
segundo elemento de la lista.

``` python
>>> # Insertar 'AA' como el segundo elemento de la lista
>>> symlist
['HPQ', 'AA', 'AAPL', 'AIG', 'MSFT', 'YHOO', 'GOOG', 'RHT']
>>>
```

Utilice el método `remove()` para eliminar `'MSFT'` de la lista.

``` python
>>> # Eliminar 'MSFT'
>>> symlist
['HPQ', 'AA', 'AAPL', 'AIG', 'YHOO', 'GOOG', 'RHT']
>>>
```

Añade una entrada duplicada para `'YHOO'` al final de la lista.

*Nota: está perfectamente bien que una lista tenga valores duplicados.*

``` python
>>> # Añadir 'YHOO'
>>> symlist
['HPQ', 'AA', 'AAPL', 'AIG', 'YHOO', 'GOOG', 'RHT', 'YHOO']
>>>
```

Utilice el método `index()` para encontrar la primera posición de
`'YHOO'` en la lista.

``` python
>>> # Encuentra el primer índice de 'YHOO'
4
>>> symlist[4]
'YHOO'
>>>
```

Cuente cuántas veces aparece `'YHOO'` en la lista:

``` python
>>> symlist.count('YHOO')
2
>>>
```

Eliminar la primera aparición de "YHOO".

``` python
>>> # Eliminar la primera aparición de 'YHOO'
>>> symlist
['HPQ', 'AA', 'AAPL', 'AIG', 'GOOG', 'RHT', 'YHOO']
>>>
```

Para que lo sepas, no existe ningún método para encontrar o eliminar
todas las apariciones de un elemento. Sin embargo, veremos una forma
elegante de hacerlo en la sección 2.

#### Ejercicio 1.23: Ordenamiento

¿Quieres ordenar una lista? Utilice el método `sort()`. Pruébelo:

``` python
>>> symlist.sort()
>>> symlist
['AA', 'AAPL', 'AIG', 'GOOG', 'HPQ', 'RHT', 'YHOO']
>>>
```

¿Quieres ordenar en sentido inverso? Prueba esto:

``` python
>>> symlist.sort(reverse=True)
>>> symlist
['YHOO', 'RHT', 'HPQ', 'GOOG', 'AIG', 'AAPL', 'AA']
>>>
```

Nota: Ordenar una lista modifica su contenido "en el lugar". Es decir,
los elementos de la lista se ordenan, pero no se crea ninguna lista
nueva como resultado.

#### Ejercicio 1.24: Poniéndolo todo junto de nuevo

¿Quieres tomar una lista de cadenas y unirlas en una sola cadena?
Utilice el método `join()` de cadenas como esta (nota: esto parece
extraño al principio).

``` python
>>> a = ','.join(symlist)
>>> a
'YHOO,RHT,HPQ,GOOG,AIG,AAPL,AA'
>>> b = ':'.join(symlist)
>>> b
'YHOO:RHT:HPQ:GOOG:AIG:AAPL:AA'
>>> c = ''.join(symlist)
>>> c
'YHOORHTHPQGOOGAIGAAPLAA'
>>>
```

#### Ejercicio 1.25: Listas de cualquier cosa

Las listas pueden contener cualquier tipo de objeto, incluidas otras
listas (por ejemplo, listas anidadas). Prueba esto:

``` python
>>> nums = [101, 102, 103]
>>> items = ['spam', symlist, nums]
>>> items
['spam', ['YHOO', 'RHT', 'HPQ', 'GOOG', 'AIG', 'AAPL', 'AA'], [101, 102, 103]]
```

Preste mucha atención al resultado anterior. `items` es una lista con
tres elementos. El primer elemento es una cadena, pero los otros dos
elementos son listas.

Puede acceder a los elementos de las listas anidadas mediante múltiples
operaciones de indexación.

``` python
>>> items[0]
'spam'
>>> items[0][0]
's'
>>> items[1]
['YHOO', 'RHT', 'HPQ', 'GOOG', 'AIG', 'AAPL', 'AA']
>>> items[1][1]
'RHT'
>>> items[1][1][2]
'T'
>>> items[2]
[101, 102, 103]
>>> items[2][1]
102
>>>
```

Si bien es técnicamente posible crear estructuras de listas muy
complicadas, como regla general, conviene mantener las cosas simples.
Generalmente las listas contienen elementos que tienen todos el mismo
tipo de valor. Por ejemplo, una lista que consta enteramente de números
o una lista de cadenas de texto. Mezclar distintos tipos de datos en la
misma lista suele ser una buena forma de hacer que te explote la cabeza,
por lo que es mejor evitarlo.

### 1.6 Gestión de archivos

La mayoría de los programas necesitan leer la entrada desde algún lugar.
Esta sección analiza el acceso a archivos.

#### Entrada y salida de archivos

Abrir un archivo.

``` python
f = open('foo.txt', 'rt')     # Abrir para lectura (r) (texto) (t)
g = open('bar.txt', 'wt')     # Abrir para escritura (w) (texto) (t)
```

Leer todos los datos.

``` python
data = f.read()

# Leer solo hasta 'maxbytes' bytes
data = f.read([maxbytes])
```

Escribe algún texto.

``` python
g.write('algún texto')
```

Ciérralo cuando hayas terminado.

``` python
f.close()
g.close()
```

Los archivos deben estar correctamente cerrados y es un paso fácil de
olvidar. Por lo tanto, el enfoque preferido es utilizar la declaración
'with' de esta manera.

``` python
with open(filename, 'rt') as file:
    # Utilice el archivo `file`
    ...
    # No es necesario cerrar explícitamente
...statements
```

Esto cierra automáticamente el archivo cuando el control abandona el
bloque de código sangrado.

#### Modismos comunes para leer datos de archivos

Leer un archivo completo de una sola vez como una cadena.

``` python
with open('foo.txt', 'rt') as file:
    data = file.read()
    # `data` es una cadena con todo el texto en `foo.txt`
```

Leer un archivo línea por línea iterando.

``` python
with open(filename, 'rt') as file:
    for line in file:
        # Procesar la línea
```

#### Modismos comunes para escribir en un archivo

Escribe datos de cadena.

``` python
with open('outfile', 'wt') as out:
    out.write('Hola mundo\n')
    ...
```

Redirigir la función de impresión.

``` python
with open('outfile', 'wt') as out:
    print('Hola mundo', file=out)
    ...
```

### Ejercicios

Estos ejercicios dependen del archivo `Data/portfolio.csv`. El archivo
contiene una lista de líneas con información sobre una cartera de
acciones. Se supone que está trabajando en el directorio
`practical-python/Work/`. Si no está seguro, puede averiguar dónde cree
Python que se está ejecutando haciendo esto:

``` python
>>> import os
>>> os.getcwd()
'/Users/beazley/practical-python/Work' # La salida varía
>>>
```

#### Ejercicio 1.26: Preliminares del archivo

Primero, intente leer el archivo completo de una sola vez como una gran
cadena:

``` python
>>> with open('Data/portfolio.csv', 'rt') as f:
        data = f.read()

>>> data
'name,shares,price\n"AA",100,32.20\n"IBM",50,91.10\n"CAT",150,83.44\n"MSFT",200,51.23\n"GE",95,40.37\n"MSFT",50,65.10\n"IBM",100,70.44\n'
>>> print(data)
name,shares,price
"AA",100,32.20
"IBM",50,91.10
"CAT",150,83.44
"MSFT",200,51.23
"GE",95,40.37
"MSFT",50,65.10
"IBM",100,70.44
>>>
```

En el ejemplo anterior, debe tenerse en cuenta que Python tiene dos
modos de salida. En el primer modo, donde escribe `data` en modo
interactivo, Python le muestra la representación de la cadena sin
procesar, incluidas comillas y códigos de escape. Cuando escribe
`print(data)`, obtiene la salida formateada real de la cadena.

Aunque leer un archivo de una sola vez es sencillo, a menudo no es la
forma más adecuada de hacerlo, especialmente si el archivo es enorme o
si contiene líneas de texto que desea manejar de a una por vez.

Para leer un archivo línea por línea, utilice un bucle for como este:

``` python
>>> with open('Data/portfolio.csv', 'rt') as f:
        for line in f:
            print(line, end='')

name,shares,price
"AA",100,32.20
"IBM",50,91.10
...
>>>
```

Cuando se utiliza este código, las líneas se leen hasta llegar al final
del archivo, momento en el que el bucle se detiene.

En ciertas ocasiones, es posible que desees leer o omitir manualmente
una *sola* línea de texto (por ejemplo, tal vez desees omitir la primera
línea de los encabezados de columna).

``` python
>>> f = open('Data/portfolio.csv', 'rt')
>>> headers = next(f)
>>> headers
'name,shares,price\n'
>>> for line in f:
    print(line, end='')

"AA",100,32.20
"IBM",50,91.10
...
>>> f.close()
>>>
```

`next()` devuelve la siguiente línea de texto en el archivo. Si lo
llamaras repetidamente obtendrías líneas sucesivas. Sin embargo, para
que lo sepas, el bucle for ya utiliza next() para obtener sus datos. Por
lo tanto, normalmente no lo llamarías directamente a menos que intentes
omitir o leer explícitamente una sola línea como se muestra.

Una vez que esté leyendo líneas de un archivo, puede comenzar a realizar
más procesamiento, como dividirlo. Por ejemplo, prueba esto:

``` python
>>> f = open('Data/portfolio.csv', 'rt')
>>> headers = next(f).split(',')
>>> headers
['name', 'shares', 'price\n']
>>> for line in f:
    row = line.split(',')
    print(row)

['"AA"', '100', '32.20\n']
['"IBM"', '50', '91.10\n']
...
>>> f.close()
```

*Nota: En estos ejemplos, se llama explícitamente a `f.close()` porque
no se está utilizando la declaración `with`.*

#### Ejercicio 1.27: Lectura de un archivo de datos

Ahora que sabes cómo leer un archivo, escribamos un programa para
realizar un cálculo simple.

Las columnas en `portfolio.csv` corresponden al nombre de la acción, el
número de acciones y el precio de compra de una sola participación en
acciones. Escriba un programa llamado `pcost.py` que abra este archivo,
lea todas las líneas y calcule cuánto cuesta comprar todas las acciones
de la cartera.

*Sugerencia: para convertir una cadena en un entero, utilice `int(s)`.
Para convertir una cadena en un punto flotante, utilice `float(s)`.*

Su programa debería imprimir una salida como la siguiente:

``` bash
Total cost 44671.15
```

#### Ejercicio 1.28: Otros tipos de "archivos"

¿Qué sucede si desea leer un archivo que no es de texto, como un archivo
de datos comprimido con gzip? La función incorporada `open()` no te
ayudará aquí, pero Python tiene un módulo de biblioteca `gzip` que puede
leer archivos comprimidos gzip.

Pruébalo:

``` python
>>> import gzip
>>> with gzip.open('Data/portfolio.csv.gz', 'rt') as f:
    for line in f:
        print(line, end='')

... look at the output ...
>>>
```

Nota: Incluir el modo de archivo `"rt"` es fundamental aquí. Si olvidas
esto, obtendrás cadenas de bytes en lugar de cadenas de texto normales.

### Comentario: ¿No deberíamos usar Pandas para esto?

Los científicos de datos se apresuran a señalar que bibliotecas como
[Pandas](https://pandas.pydata.org) ya tienen una función para leer
archivos CSV. Esto es cierto y funciona bastante bien. Sin embargo, este
no es un curso para aprender Pandas. La lectura de archivos es un
problema más general que los detalles específicos de los archivos CSV.
La razón principal por la que trabajamos con un archivo CSV es que es un
formato familiar para la mayoría de los codificadores y es relativamente
fácil trabajar con él directamente, lo que ilustra muchas
características de Python en el proceso. Así que, sin duda, utiliza
Pandas cuando vuelvas a trabajar. Sin embargo, durante el resto de este
curso nos quedaremos con la funcionalidad estándar de Python.

### 1.7 Funciones

A medida que sus programas comiencen a crecer, querrá organizarse. Esta
sección presenta brevemente las funciones y los módulos de la
biblioteca. También se introduce el manejo de errores con excepciones.

#### Funciones personalizadas

Utilice funciones para el código que desea reutilizar. Aquí hay una
definición de función:

``` python
def sumcount(n):
    '''
    Returns the sum of the first n integers
    '''
    total = 0
    while n > 0:
        total += n
        n -= 1
    return total
```

Para llamar a una función.

``` python
a = sumcount(100)
```

Una función es una serie de instrucciones que realizan una tarea y
devuelven un resultado. La palabra clave `return` es necesaria para
especificar explícitamente el valor de retorno de la función.

### Funciones de la biblioteca

Python viene con una gran biblioteca estándar. Se accede a los módulos
de la biblioteca mediante 'import'. Por ejemplo:

``` python
import math
x = math.sqrt(10)

import urllib.request
u = urllib.request.urlopen('http://www.python.org/')
data = u.read()
```

Cubriremos bibliotecas y módulos con más detalle más adelante.

#### Errores y excepciones

Las funciones informan los errores como excepciones. Una excepción
provoca la interrupción de una función y puede provocar que todo el
programa se detenga si no se controla.

Pruebe esto en su REPL de Python.

``` python
>>> int('N/A')
Traceback (most recent call last):
File "<stdin>", line 1, in <module>
ValueError: invalid literal for int() with base 10: 'N/A'
>>>
```

Para fines de depuración, el mensaje describe qué sucedió, dónde ocurrió
el error y un seguimiento que muestra las otras llamadas de función que
llevaron a la falla.

#### Captura y manejo de excepciones

Se pueden detectar y gestionar excepciones.

Para capturarlo, utilice la instrucción `try - except`.

``` python
for line in file:
    fields = line.split(',')
    try:
        shares = int(fields[1])
    except ValueError:
        print("Couldn't parse", line)
    ...
```

El nombre `ValueError` debe coincidir con el tipo de error que estás
intentando detectar.

A menudo es difícil saber con antelación qué tipos de errores podrían
producirse en función de la operación que se esté realizando. Para bien
o para mal, el manejo de excepciones a menudo se agrega *después* de que
un programa falla inesperadamente (es decir, "oh, olvidamos detectar ese
error. ¡Deberíamos manejarlo!").

#### Generar excepciones

Para generar una excepción, utilice la declaración `raise`.

``` python
raise RuntimeError('What a kerfuffle')
```

Esto provocará que el programa se cancele con un seguimiento de
excepción. A menos que sea detectado por un bloque `try-except`.

``` bash
% python3 foo.py
Traceback (most recent call last):
  File "foo.py", line 21, in <module>
    raise RuntimeError("What a kerfuffle")
RuntimeError: What a kerfuffle
```

#### Ejercicios

##### Ejercicio 1.29: Definición de una función

Intente definir una función simple:

``` python
>>> def greeting(name):
        'Emite un saludo'
        print('Hola', name)

>>> greeting('Guido')
Hola Guido
>>> greeting('Paula')
Hola Paula
>>>
```

Si la primera declaración de una función es una cadena, sirve como
documentación. Intente escribir un comando como `help(greeting)` para
verlo mostrado.

##### Ejercicio 1.30: Convertir un script en una función

Tome el código que escribió para el programa `pcost.py` en el [Ejercicio
1.27] y conviértalo en una función `portfolio_cost(filename)`. Esta
función toma un nombre de archivo como entrada, lee los datos de la
cartera en ese archivo y devuelve el costo total de la cartera como un
número tipo `float`.

Para utilizar su función, cambie su programa para que se parezca a esto:

``` python
def portfolio_cost(filename):
    ...
    # Su código aquí
    ...

cost = portfolio_cost('Data/portfolio.csv')
print('Costo Total:', cost)
```

Cuando ejecute su programa, debería ver el mismo resultado que antes.
Después de ejecutar su programa, también puede llamar a su función de
forma interactiva escribiendo lo siguiente:

``` bash
bash % python3 -i pcost.py
```

Esto le permitirá llamar a su función desde el modo interactivo.

``` python
>>> portfolio_cost('Datos/portfolio.csv')
44671.15
>>>
```

Poder experimentar con su código de forma interactiva es útil para
realizar pruebas y depuraciones.

##### Ejercicio 1.31: Manejo de errores

¿Qué sucede si prueba su función en un archivo con algunos campos
faltantes?

``` python
>>> portfolio_cost('Data/missing.csv')
Traceback (most recent call last):
    File "<stdin>", line 1, in <module>
    File "pcost.py", line 11, in portfolio_cost
    nshares    = int(fields[1])
ValueError: invalid literal for int() with base 10: ''
>>>
```

En este punto, usted se enfrenta a una decisión. Para que el programa
funcione, puede desinfectar el archivo de entrada original eliminando
las líneas defectuosas o puede modificar su código para manejar las
líneas defectuosas de alguna manera.

Modifique el programa `pcost.py` para capturar la excepción, imprimir un
mensaje de advertencia y continuar procesando el resto del archivo.

##### Ejercicio 1.32: Uso de una función de biblioteca

Python viene con una gran biblioteca estándar de funciones útiles. Una
biblioteca que podría ser útil aquí es el módulo `csv`. Debes usarlo
siempre que tengas que trabajar con archivos de datos CSV. He aquí un
ejemplo de cómo funciona:

``` python
>>> import csv
>>> f = open('Data/portfolio.csv')
>>> rows = csv.reader(f)
>>> headers = next(rows)
>>> headers
['name', 'shares', 'price']
>>> for row in rows:
        print(row)

['AA', '100', '32.20']
['IBM', '50', '91.10']
['CAT', '150', '83.44']
['MSFT', '200', '51.23']
['GE', '95', '40.37']
['MSFT', '50', '65.10']
['IBM', '100', '70.44']
>>> f.close()
>>>
```

Una de las ventajas del módulo `csv` es que se ocupa de una variedad de
detalles de bajo nivel, como citas y división adecuada de comas. En el
resultado anterior, notarás que se han eliminado las comillas dobles de
los nombres en la primera columna.

Modifique su programa `pcost.py` para que utilice el módulo `csv` para
analizar e intente ejecutar ejemplos anteriores.

### Ejercicio 1.33: Lectura desde la línea de comandos

En el programa `pcost.py`, el nombre del archivo de entrada se ha
incorporado al código:

``` python
# pcost.py

def portfolio_cost(filename):
    ...
    # Tu código aquí
    ...

cost = portfolio_cost('Data/portfolio.csv')
print('Costo Total:', cost)
```

Eso está bien para aprender y probar, pero en un programa real
probablemente no lo harías.

En lugar de ello, puedes pasar el nombre del archivo como argumento a un
script. Intente cambiar la parte inferior del programa de la siguiente
manera:

``` python
# pcost.py
import sys

def portfolio_cost(filename):
    ...
    # Tu código aquí
    ...

if len(sys.argv) == 2:
    filename = sys.argv[1]
else:
    filename = 'Data/portfolio.csv'

cost = portfolio_cost(filename)
print('Costo Total:', cost)
```

`sys.argv` es una lista que contiene los argumentos pasados en la línea
de comando (si los hay).

Para ejecutar su programa, necesitará ejecutar Python desde la terminal.

Por ejemplo, desde bash en Unix:

``` bash
bash % python3 pcost.py Data/portfolio.csv
Costo Total: 44671.15
bash %
```
