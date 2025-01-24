---
title: "07_Functions"
output: html_document
---

[Contenido](../Contents.Rmd) \| [Anterior (1.6 Archivos)](06_Files.Rmd) \| [Próximo (2. Trabajar con datos)](../02_Working_with_data/00_Overview.Rmd)


### 1.7 Funciones

A medida que sus programas comiencen a crecer, querrá organizarse. Esta sección presenta brevemente las funciones y los módulos de la biblioteca. También se introduce el manejo de errores con excepciones.

#### Funciones personalizadas

Utilice funciones para el código que desea reutilizar. Aquí hay una definición de función:

```python
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

```python
a = sumcount(100)
```

Una función es una serie de instrucciones que realizan una tarea y devuelven un resultado. La palabra clave `return` es necesaria para especificar explícitamente el valor de retorno de la función.

#### Funciones de la biblioteca

Python viene con una gran biblioteca estándar. Se accede a los módulos de la biblioteca mediante 'import'. Por ejemplo:

```python
import math
x = math.sqrt(10)

import urllib.request
u = urllib.request.urlopen('http://www.python.org/')
data = u.read()
```

Cubriremos bibliotecas y módulos con más detalle más adelante.

#### Errores y excepciones

Las funciones informan los errores como excepciones. Una excepción provoca la interrupción de una función y puede provocar que todo el programa se detenga si no se controla.

Pruebe esto en su REPL de Python.

```python
>>> int('N/A')
Traceback (most recent call last):
File "<stdin>", line 1, in <module>
ValueError: invalid literal for int() with base 10: 'N/A'
>>>
```

Para fines de depuración, el mensaje describe qué sucedió, dónde ocurrió el error y un seguimiento que muestra las otras llamadas de función que llevaron a la falla.

#### Captura y manejo de excepciones

Se pueden detectar y gestionar excepciones.

Para capturarlo, utilice la instrucción `try - except`.

```python
for line in file:
    fields = line.split(',')
    try:
        shares = int(fields[1])
    except ValueError:
        print("Couldn't parse", line)
    ...
```

El nombre `ValueError` debe coincidir con el tipo de error que estás intentando detectar.

A menudo es difícil saber con antelación qué tipos de errores podrían producirse en función de la operación que se esté realizando. Para bien o para mal, el manejo de excepciones a menudo se agrega *después* de que un programa falla inesperadamente (es decir, "oh, olvidamos detectar ese error. ¡Deberíamos manejarlo!").

#### Generar excepciones

Para generar una excepción, utilice la declaración `raise`.

```python
raise RuntimeError('What a kerfuffle')
```

Esto provocará que el programa se cancele con un seguimiento de excepción. A menos que sea detectado por un bloque `try-except`.

```bash
% python3 foo.py
Traceback (most recent call last):
  File "foo.py", line 21, in <module>
    raise RuntimeError("What a kerfuffle")
RuntimeError: What a kerfuffle
```

#### Ejercicios

##### Ejercicio 1.29: Definición de una función

Intente definir una función simple:

```python
>>> def greeting(name):
        'Emite un saludo'
        print('Hola', name)

>>> greeting('Guido')
Hola Guido
>>> greeting('Paula')
Hola Paula
>>>
```

Si la primera declaración de una función es una cadena, sirve como documentación. Intente escribir un comando como `help(greeting)` para verlo mostrado.

##### Ejercicio 1.30: Convertir un script en una función

Tome el código que escribió para el programa `pcost.py` en el [Ejercicio 1.27] y conviértalo en una función `portfolio_cost(filename)`. Esta función toma un nombre de archivo como entrada, lee los datos de la cartera en ese archivo y devuelve el costo total de la cartera como un número tipo `float`.

Para utilizar su función, cambie su programa para que se parezca a esto:


```python
def portfolio_cost(filename):
    ...
    # Su código aquí
    ...

cost = portfolio_cost('Data/portfolio.csv')
print('Costo Total:', cost)
```

Cuando ejecute su programa, debería ver el mismo resultado que antes. Después de ejecutar su programa, también puede llamar a su función de forma interactiva escribiendo lo siguiente:

```bash
bash % python3 -i pcost.py
```

Esto le permitirá llamar a su función desde el modo interactivo.

```python
>>> portfolio_cost('Datos/portfolio.csv')
44671.15
>>>
```

Poder experimentar con su código de forma interactiva es útil para realizar pruebas y depuraciones.

##### Ejercicio 1.31: Manejo de errores

¿Qué sucede si prueba su función en un archivo con algunos campos faltantes?

```python
>>> portfolio_cost('Data/missing.csv')
Traceback (most recent call last):
    File "<stdin>", line 1, in <module>
    File "pcost.py", line 11, in portfolio_cost
    nshares    = int(fields[1])
ValueError: invalid literal for int() with base 10: ''
>>>
```

En este punto, usted se enfrenta a una decisión. Para que el programa funcione, puede desinfectar el archivo de entrada original eliminando las líneas defectuosas o puede modificar su código para manejar las líneas defectuosas de alguna manera.

Modifique el programa `pcost.py` para capturar la excepción, imprimir un mensaje de advertencia y continuar procesando el resto del archivo.

##### Ejercicio 1.32: Uso de una función de biblioteca

Python viene con una gran biblioteca estándar de funciones útiles. Una biblioteca que podría ser útil aquí es el módulo `csv`. Debes usarlo siempre que tengas que trabajar con archivos de datos CSV. He aquí un ejemplo de cómo funciona:

```python
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

Una de las ventajas del módulo `csv` es que se ocupa de una variedad de detalles de bajo nivel, como citas y división adecuada de comas. En el resultado anterior, notarás que se han eliminado las comillas dobles de los nombres en la primera columna.

Modifique su programa `pcost.py` para que utilice el módulo `csv` para analizar e intente ejecutar ejemplos anteriores.

##### Ejercicio 1.33: Lectura desde la línea de comandos

En el programa `pcost.py`, el nombre del archivo de entrada se ha incorporado al código:

```python
# pcost.py

def portfolio_cost(filename):
    ...
    # Tu código aquí
    ...

cost = portfolio_cost('Data/portfolio.csv')
print('Costo Total:', cost)
```

Eso está bien para aprender y probar, pero en un programa real probablemente no lo harías.

En lugar de ello, puedes pasar el nombre del archivo como argumento a un script. Intente cambiar la parte inferior del programa de la siguiente manera:

```python
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

`sys.argv` es una lista que contiene los argumentos pasados en la línea de comando (si los hay).

Para ejecutar su programa, necesitará ejecutar Python desde la terminal.

Por ejemplo, desde bash en Unix:

```bash
bash % python3 pcost.py Data/portfolio.csv
Costo Total: 44671.15
bash %
```

[Contenido](../Contents.Rmd) \| [Anterior (1.6 Archivos)](06_Files.Rmd) \| [Próximo (2. Trabajar con datos)](../02_Working_with_data/00_Overview.Rmd)