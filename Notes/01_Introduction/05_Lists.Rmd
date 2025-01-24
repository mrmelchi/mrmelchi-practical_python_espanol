---
title: "05_Lists"
output: html_document
---

[Contenido](../Contents.Rmd) \| [Anterior (1.4 Strings)](04_Strings.Rmd) \| [Next (1.6 Archivos)](06_Files.Rmd)

### 1.5 Listas

Esta sección presenta las listas, el tipo principal de Python para almacenar una colección ordenada de valores.

#### Creando una lista

Utilice corchetes para definir una lista literal:

```         
names = [ 'Elwood', 'Jake', 'Curtis' ]
nums = [ 39, 38, 42, 65, 111]
```

A veces las listas se crean mediante otros métodos. Por ejemplo, una cadena se puede dividir en una lista usando el método `split()`:

```         
>>> linea = 'GOOG,100,490.10' # sin tilde
>>> fila = linea.split(',')
>>> fila
['GOOG', '100', '490.10']
>>>
```

#### Operaciones de lista

Las listas pueden contener elementos de cualquier tipo. Agregue un nuevo elemento usando `append()`:

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

Esto es similar a una declaración 'foreach' de otros lenguajes de programación.

Para encontrar la posición de algo rápidamente, utilice `index()`.

``` python
names = ['Elwood','Jake','Curtis']
names.index('Curtis')   # 2
```

Si el elemento está presente más de una vez, `index()` devolverá el índice de la primera aparición.

Si no se encuentra el elemento, se generará una excepción 'ValueError'.

#### Eliminación de lista

Puede eliminar elementos por valor de elemento o por índice:

``` python
# Usando el valor
names.remove('Curtis')

# Usando el índice
del names[1]
```

Quitar un elemento no crea un agujero. Otros elementos se moverán hacia abajo para llenar el espacio dejado vacante. Si hay más de una ocurrencia del elemento, `remove()` eliminará solo la primera ocurrencia.

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

*Precaución: Las listas no fueron diseñadas para operaciones matemáticas.*

``` python
>>> nums = [1, 2, 3, 4, 5]
>>> nums * 2
[1, 2, 3, 4, 5, 1, 2, 3, 4, 5]
>>> nums + [10, 11, 12, 13, 14]
[1, 2, 3, 4, 5, 10, 11, 12, 13, 14]
```

Específicamente, las listas no representan vectores/matrices como en MATLAB, Octave, R, etc. Sin embargo, existen algunos paquetes que pueden ayudarte con eso (por ejemplo, [numpy](https://numpy.org)).

#### Ejercicios

En este ejercicio, experimentamos con el tipo de datos de lista de Python. En la última sección, trabajaste con cadenas que contenían símbolos bursátiles.

``` python
>>> symbols = 'HPQ,AAPL,IBM,MSFT,YHOO,DOA,GOOG'
```

Divídalo en una lista de nombres utilizando la operación `split()` de cadenas:

``` python
>>> symlist = symbols.split(',')
```

##### Ejercicio 1.19: Extracción y reasignación de elementos de lista

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

Al hacer esto, la lista del lado izquierdo (`symlist`) se redimensionará según corresponda para que encaje en el lado derecho (`mysyms`). Por ejemplo, en el ejemplo anterior, los dos últimos elementos de `symlist` fueron reemplazados por el único elemento de la lista `mysyms`.

##### Ejercicio 1.20: Recorrer los elementos de la lista

El bucle `for` funciona recorriendo los datos de una secuencia, como por ejemplo una lista. Compruébelo escribiendo el siguiente bucle y observando lo que sucede:

``` python
>>> for s in symlist:
        print('s =', s)
# Mire la salida
```

##### Ejercicio 1.21: Pruebas de pertenencia

Utilice el operador `in` o `not in` para comprobar si `'AIG'`, `'AA'` y `'CAT'` están en la lista de símbolos.

``` python
>>> # Está 'AIG' en `symlist`?
True
>>> # Está 'AA' en `symlist`?
False
>>> # NO Está 'CAT' en `symlist`?
True
>>>
```

##### Ejercicio 1.22: Añadir, insertar y eliminar elementos

Utilice el método `append()` para agregar el símbolo `'RHT'` al final de `symlist`.

``` python
>>> # append 'RHT'
>>> symlist
['HPQ', 'AAPL', 'AIG', 'MSFT', 'YHOO', 'GOOG', 'RHT']
>>>
```

Utilice el método `insert()` para insertar el símbolo `'AA'` como el segundo elemento de la lista.

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

Utilice el método `index()` para encontrar la primera posición de `'YHOO'` en la lista.

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

Para que lo sepas, no existe ningún método para encontrar o eliminar todas las apariciones de un elemento. Sin embargo, veremos una forma elegante de hacerlo en la sección 2.

##### Ejercicio 1.23: Ordenamiento

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

Nota: Ordenar una lista modifica su contenido "en el lugar". Es decir, los elementos de la lista se ordenan, pero no se crea ninguna lista nueva como resultado.

##### Ejercicio 1.24: Poniéndolo todo junto de nuevo

¿Quieres tomar una lista de cadenas y unirlas en una sola cadena? Utilice el método `join()` de cadenas como esta (nota: esto parece extraño al principio).

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

##### Ejercicio 1.25: Listas de cualquier cosa

Las listas pueden contener cualquier tipo de objeto, incluidas otras listas (por ejemplo, listas anidadas). Prueba esto:

``` python
>>> nums = [101, 102, 103]
>>> items = ['spam', symlist, nums]
>>> items
['spam', ['YHOO', 'RHT', 'HPQ', 'GOOG', 'AIG', 'AAPL', 'AA'], [101, 102, 103]]
```

Preste mucha atención al resultado anterior. `items` es una lista con tres elementos. El primer elemento es una cadena, pero los otros dos elementos son listas.

Puede acceder a los elementos de las listas anidadas mediante múltiples operaciones de indexación.

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

Si bien es técnicamente posible crear estructuras de listas muy complicadas, como regla general, conviene mantener las cosas simples. Generalmente las listas contienen elementos que tienen todos el mismo tipo de valor. Por ejemplo, una lista que consta enteramente de números o una lista de cadenas de texto. Mezclar distintos tipos de datos en la misma lista suele ser una buena forma de hacer que te explote la cabeza, por lo que es mejor evitarlo.

[Contenido](../Contents.Rmd) \| [Anterior (1.4 Strings)](04_Strings.Rmd) \| [Next (1.6 Archivos)](06_Files.Rmd)
