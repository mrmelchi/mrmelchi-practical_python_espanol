---
title: "02_Hello_world"
output: html_document
editor_options: 
  markdown: 
    wrap: 72
---

[Contenido](../Contents.Rmd) \| [Anterior (1.1 Introducción a
Python)](01_Python.Rmd) \| [Próximo (1.3 Números)](03_Numbers.Rmd)

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
>>> for i in range(5):
...print(i)
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

-   ¿En qué línea está el error?
-   ¿Cuál es el error?
-   Arreglar el error
-   Ejecutar el programa exitosamente

[Contenido](../Contents.Rmd) \| [Anterior (1.1 Introducción a
Python)](01_Python.Rmd) \| [Próximo (1.3 Números)](03_Numbers.Rmd)
