---
title: "03_Numbers"
output: html_document
---

[Contenido](../Contents.Rmd) \| [Anterior (1.2 Un primer programa)](02_Hello_world.Rmd) \| [Próximo (1.4 Strings)](04_Strings.Rmd)

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

Utilice una notación decimal o exponencial para especificar un valor de punto flotante:

```         
a = 37,45
b = 4e5 # 4 x 10**5 o 400.000
c = -1,345e-10
```

Los flotantes se representan como doble precisión utilizando la representación nativa de CPU [IEEE 754](https://en.wikipedia.org/wiki/IEEE_754). Esto es lo mismo que el tipo `double` en el lenguaje de programación C.

-   17 dígitos de precisión
-   Exponente de -308 a 308

Tenga en cuenta que los números de punto flotante son inexactos cuando se representan decimales.

```         
>>> a = 2.1 + 4.2
>>> a == 6.3
False
>>> a
6.3000000000000001
>>>
```

Este **no es un problema de Python**, sino el hardware de punto flotante subyacente en la CPU.

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

Estos son los mismos operadores que los números enteros, excepto los operadores bit a bit.

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

Los siguientes operadores de comparación/relacionales funcionan con números:

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

#### Ejercicios

Recordatorio: Estos ejercicios suponen que estás trabajando en el directorio `practical-python/Work`. Mira el archivo `mortgage.py`.

##### Ejercicio 1.7: La hipoteca de Dave

> Dave ha decidido contratar una hipoteca a tipo fijo a 30 años por 500.000 dólares. con Guido’s Mortgage, Stock Investment, and Bitcoin trading corporation. La tasa de interés es del 5% y el pago mensual es \$2684.11.

Aquí hay un programa que calcula la cantidad total que tendrá Dave a pagar durante la vida de la hipoteca:

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

Ingrese a este programa y ejecútelo. Debería obtener una respuesta de `Total pagado 966279.6`.

##### Ejercicio 1.8: Pagos extra

Supongamos que Dave paga \$1000 extra al mes durante los primeros 12 meses de la hipoteca.

Modifique el programa para incorporar este pago adicional y haga que imprima el monto total pagado junto con el número de meses requeridos.

Al ejecutar el nuevo programa, debería informar `Total pagado 929965.62 # de cuotas 342`

##### Ejercicio 1.9: Calculadora para realizar un pago adicional

Modificar el programa para que la información de pago adicional pueda manejarse de forma más general. Haga que el usuario pueda configurar estas variables:

```         
pago_extra = 1000
pago_extra_mes_inicial = 61
pago_extra_mes_final = 108
```

Haga que el programa tome estas variables y calcule el total a pagar.

¿Cuánto pagará Dave si paga \$1000 adicionales al mes durante 4 años a partir de que ya se hayan pagado los primeros cinco años?

##### Ejercicio 1.10: Hacer una tabla

Modifique el programa para imprimir una tabla que muestre el mes, el total pagado hasta el momento y el capital restante. El resultado debería verse así:

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

##### Ejercicio 1.11: Bonificación

Mientras esté en ello, arregle el programa para corregir el pago en exceso que ocurrió en el último mes.

##### Ejercicio 1.12: Un misterio

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

[Contenido](../Contents.Rmd) \| [Anterior (1.2 Un primer programa)](02_Hello_world.Rmd) \| [Próximo (1.4 Strings)](04_Strings.Rmd)
