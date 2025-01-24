---
title: "01_Python"
output: html_document
---

[Contenido](../Contents.Rmd) \| [Próximo (1.2 Un primer programa)](02_Hello_world.Rmd)

### 1.1 Python

#### ¿Qué es Python?

Python es un lenguaje de programación interpretado de alto nivel. A menudo se clasifica como una ["lenguaje de script"](https://en.wikipedia.org/wiki/Scripting_language) y se considera similar a lenguajes como Perl, Tcl o Ruby. La sintaxis El lenguaje Python está vagamente inspirado en elementos de la programación C.

Python fue creado por Guido van Rossum alrededor de 1990, quien lo nombró en honor a Monty Python.

#### ¿Dónde conseguir Python?

[Python.org](https://www.python.org/) es donde puedes obtener Python. Para los propósitos de este curso, usted sólo necesita una instalación básica. Recomiendo instalar Python 3.6 o más reciente. En las notas se utiliza Python 3.6 y soluciones.

#### ¿Por qué se creó Python?

En palabras del creador de Python:

> Mi motivación original para crear Python fue la necesidad percibida para un lenguaje de nivel superior en el proyecto Amoeba [Sistemas Operativos]. Me di cuenta de que el desarrollo de la administración de sistemas. Las utilidades en C estaban tardando demasiado. Además, hacer estas cosas en el shell Bourne no funcionaría por diversas razones. ... Entonces, había una necesidad de un lenguaje que pudiera cerrar la brecha entre C y el shell.
>
> -   
>
>     #### *Guido van Rossum*

#### ¿Dónde está Python en mi máquina?

Aunque existen muchos entornos en los que puedes ejecutar Python, Python normalmente se instala en su máquina como un programa que se ejecuta desde el cmd, la terminal o shell de comandos. Desde la terminal, deberías estar capaz de escribir 'python' de esta manera:

```         
bash % python
Python 3.11.7 | packaged by Anaconda, Inc. | (main, Dec 15 2023, 18:05:47) [MSC v.1916 64 bit (AMD64)] on win32
Type "help", "copyright", "credits" or "license" for more information.
>>>
>>> print("hola mundo")
Hola Mundo
>>>
```

Si no tienes experiencia en el uso del cmd, el shell o una terminal, probablemente deberías detenerte aquí, examina un breve tutorial sobre CMD, shell o terminal y luego regresa.

Aunque existen muchos entornos que no son de shell donde puedes codificar Python, serás un programador de Python más fuerte si eres capaz de ejecutar, depurar e interactúar con Python en la terminal. Este es el entorno nativo de Python. Si puedes usar Python aquí, podrás usarlo en cualquier otro lugar.

#### Ejercicios

##### Ejercicio 1.1: Uso de Python como calculadora

En su máquina, inicie Python y úselo como calculadora para resolver el problema. siguiente problema.

> Lucky Larry compró 75 acciones de Google a un precio de 235,14 dólares por acción. Hoy, las acciones de Google cotizan a 711,25 dólares. Usando Python Modo interactivo como calculadora, averigüe cuánta ganancia obtendría Larry. ¿Qué haría si vendiera todas sus acciones?

```         
>>> (711,25 - 235,14) * 75
35708.25
>>>
```

Consejo profesional: utilice la variable de guión bajo `_` para utilizar el resultado del último cálculo. Por ejemplo, \>¿cuánto beneficio obtiene Larry después que su malvado corredor se lleva ùna comisión del 20%?

```         
>>> _ * 0,80
28566.600000000002
>>>
```

##### Ejercicio 1.2: Obtener ayuda

Utilice el comando `help()` para obtener ayuda sobre la función `abs()`. Luego usa `help()` para obtener ayuda sobre la función `round()`. Escriba `help()` simplemente, sin ningún valor para ingresar al visor de ayuda interactivo.

Una advertencia con `help()`: no funciona para Python básico. Declaraciones como `for` `if`, `while`, etc. (es decir, si escribe `help(for)` obtendrá un error de sintaxis). Puedes intentar poner el tema del que requiere ayuda entre comillas como `help('for')` en su lugar. Si eso no funciona, tendrás que recurrir a una búsqueda en Internet.

Seguimiento: Vaya a (<http://docs.python.org>) y busque la documentación para la función `abs()` (pista: se encuentra en la referencia de la biblioteca relacionada con funciones integradas).

##### Ejercicio 1.3: Cortar y pegar

Este libro está estructurado como una serie de páginas donde se le recomienda probar ejemplos de código Python interactivos **escribiendo**. Si estás aprendiendo Python por primera vez, se aconseja este "enfoque lento". Tendrás una mejor idea del lenguaje disminuyendo la velocidad, escribiendo cosas y pensando en ¿Qué estás haciendo?

Si debe "cortar y pegar" ejemplos de código, seleccione el código comenzando después del indicador `>>>` y llegando hasta, pero no más allá que la primera línea en blanco o el siguiente mensaje `>>>` (el que aparezca primero), seleccione "copiar" desde el navegador, vaya a la ventana de Python y seleccione "pegar" para copiarlo en el shell de Python. Para conseguir que el código se ejecute, es posible que tengas que presionar "Intro" una vez que lo hayas pegado.

Utilice cortar y pegar para ejecutar las declaraciones de Python en esta sesión:

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

**Advertencia**: nunca es posible pegar más de un comando de Python (declaraciones que aparecen después de `>>>`) al shell básico de Python . Tienes que pegar cada comando uno a la vez.

Ahora que ya has hecho esto, recuerda que obtendrás más provecho del libro escribiendo el código lentamente y pensando en él, no cortando y pegando.

[Contenido](../Contents.Rmd) \| [Próximo (1.2 Un primer programa)](02_Hello_world.Rmd)
