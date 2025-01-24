---
title: "04_Strings"
output: html_document
editor_options: 
  markdown: 
    wrap: 72
---

[Contenido](../Contents.Rmd) \| [Anterior (1.3 Números)](03_Numbers.Rmd)
\| [Next (1.5 Listas)](05_Lists.Rmd)

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

#### Ejercicios

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

##### Ejercicio 1.13: Extracción de caracteres individuales y subcadenas

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

##### Ejercicio 1.14: Concatenación de cadenas

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

##### Ejercicio 1.15: Prueba de pertenencia (prueba de subcadenas)

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

##### Ejercicio 1.16: Métodos de cadena

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

##### Ejercicio 1.17: f-string

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

##### Ejercicio 1.18: Expresiones regulares

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

[Contenido](../Contents.Rmd) \| [Anterior (1.3 Números)](03_Numbers.Rmd)
\| [Next (1.5 Listas)](05_Lists.Rmd)
