---
title: "06_Files"
output: html_document
---

[Contents](../Contents.Rmd) \| [Previous (1.5 Lists)](05_Lists.Rmd) \| [Next (1.7 Functions)](07_Functions.Rmd)

### 1.6 Gestión de archivos

La mayoría de los programas necesitan leer la entrada desde algún lugar. Esta sección analiza el acceso a archivos.

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

Los archivos deben estar correctamente cerrados y es un paso fácil de olvidar. Por lo tanto, el enfoque preferido es utilizar la declaración 'with' de esta manera.

``` python
with open(filename, 'rt') as file:
    # Utilice el archivo `file`
    ...
    # No es necesario cerrar explícitamente
...statements
```

Esto cierra automáticamente el archivo cuando el control abandona el bloque de código sangrado.

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

#### Ejercicios

Estos ejercicios dependen del archivo `Data/portfolio.csv`. El archivo contiene una lista de líneas con información sobre una cartera de acciones. Se supone que está trabajando en el directorio `practical-python/Work/`. Si no está seguro, puede averiguar dónde cree Python que se está ejecutando haciendo esto:

``` python
>>> import os
>>> os.getcwd()
'/Users/beazley/practical-python/Work' # La salida varía
>>>
```

##### Ejercicio 1.26: Preliminares del archivo

Primero, intente leer el archivo completo de una sola vez como una gran cadena:

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

En el ejemplo anterior, debe tenerse en cuenta que Python tiene dos modos de salida. En el primer modo, donde escribe `data` en modo interactivo, Python le muestra la representación de la cadena sin procesar, incluidas comillas y códigos de escape. Cuando escribe `print(data)`, obtiene la salida formateada real de la cadena.

Aunque leer un archivo de una sola vez es sencillo, a menudo no es la forma más adecuada de hacerlo, especialmente si el archivo es enorme o si contiene líneas de texto que desea manejar de a una por vez.

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

Cuando se utiliza este código, las líneas se leen hasta llegar al final del archivo, momento en el que el bucle se detiene.

En ciertas ocasiones, es posible que desees leer o omitir manualmente una *sola* línea de texto (por ejemplo, tal vez desees omitir la primera línea de los encabezados de columna).

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

`next()` devuelve la siguiente línea de texto en el archivo. Si lo llamaras repetidamente obtendrías líneas sucesivas. Sin embargo, para que lo sepas, el bucle for ya utiliza next() para obtener sus datos. Por lo tanto, normalmente no lo llamarías directamente a menos que intentes omitir o leer explícitamente una sola línea como se muestra.

Una vez que esté leyendo líneas de un archivo, puede comenzar a realizar más procesamiento, como dividirlo. Por ejemplo, prueba esto:

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

*Nota: En estos ejemplos, se llama explícitamente a `f.close()` porque no se está utilizando la declaración `with`.*

##### Ejercicio 1.27: Lectura de un archivo de datos

Ahora que sabes cómo leer un archivo, escribamos un programa para realizar un cálculo simple.

Las columnas en `portfolio.csv` corresponden al nombre de la acción, el número de acciones y el precio de compra de una sola participación en acciones. Escriba un programa llamado `pcost.py` que abra este archivo, lea todas las líneas y calcule cuánto cuesta comprar todas las acciones de la cartera.

*Sugerencia: para convertir una cadena en un entero, utilice `int(s)`. Para convertir una cadena en un punto flotante, utilice `float(s)`.*

Su programa debería imprimir una salida como la siguiente:

``` bash
Total cost 44671.15
```

##### Ejercicio 1.28: Otros tipos de "archivos"

¿Qué sucede si desea leer un archivo que no es de texto, como un archivo de datos comprimido con gzip? La función incorporada `open()` no te ayudará aquí, pero Python tiene un módulo de biblioteca `gzip` que puede leer archivos comprimidos gzip.

Pruébalo:

``` python
>>> import gzip
>>> with gzip.open('Data/portfolio.csv.gz', 'rt') as f:
    for line in f:
        print(line, end='')

... look at the output ...
>>>
```

Nota: Incluir el modo de archivo `"rt"` es fundamental aquí. Si olvidas esto, obtendrás cadenas de bytes en lugar de cadenas de texto normales.

#### Comentario: ¿No deberíamos usar Pandas para esto?

Los científicos de datos se apresuran a señalar que bibliotecas como [Pandas](https://pandas.pydata.org) ya tienen una función para leer archivos CSV. Esto es cierto y funciona bastante bien. Sin embargo, este no es un curso para aprender Pandas. La lectura de archivos es un problema más general que los detalles específicos de los archivos CSV. La razón principal por la que trabajamos con un archivo CSV es que es un formato familiar para la mayoría de los codificadores y es relativamente fácil trabajar con él directamente, lo que ilustra muchas características de Python en el proceso. Así que, sin duda, utiliza Pandas cuando vuelvas a trabajar. Sin embargo, durante el resto de este curso nos quedaremos con la funcionalidad estándar de Python.

[Contents](../Contents.Rmd) \| [Previous (1.5 Lists)](05_Lists.Rmd) \| [Next (1.7 Functions)](07_Functions.Rmd)
