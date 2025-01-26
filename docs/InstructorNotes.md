# Programación práctica con Python - Notas para el instructor

Autor: David Beazley

## Descripción general

Este documento proporciona algunas notas generales y consejos sobre la
enseñanza del contenido de mi curso “Practical Python”, incluidos los
objetivos, el público objetivo, las partes complicadas, etc.

Estas instrucciones se les dieron a las personas que imparten el curso
en un entorno típico de capacitación corporativa de tres días. Es
posible que le brinden una idea sobre cómo enseñar su propio curso.

## Público objetivo y enfoque general

Este curso está destinado a ser un curso de “Introducción a Python” para
personas que ya tienen algo de experiencia en programación. Este
definitivamente no es un curso diseñado para enseñar a las personas
“programación 101”.

Habiendo dicho eso, he observado que el estudiante típico en un curso de
Python tampoco es probable que sea un ingeniero de software o
programador de núcleo duro. En cambio, probablemente obtendrá una mezcla
de ingenieros, científicos, programadores web y desarrolladores más
inexpertos. La formación de los estudiantes varía ampliamente. Es
posible que tengas algunos estudiantes con mucha experiencia en C, C++ y
Java, otros pueden saber PHP y HTML, otros pueden venir de herramientas
como MATLAB y otros pueden no tener casi ninguna experiencia en
“programación” tradicional a pesar de mis mejores intentos por aclarar
los requisitos previos.

Con esto en mente, el curso apunta a enseñar Python a través del
problema general de manipulación de datos (datos del mercado de valores
en particular). Este dominio ha sido elegido porque es simple y algo que
todos deberían saber al respecto independientemente de su experiencia.
Solo como ejemplo, es probable que los estudiantes con habilidades de
programación débiles aún sepan sobre cosas comunes como usar una hoja de
cálculo (por ejemplo, Excel). Entonces, si están realmente estancados,
puedes decirles cosas como “bueno, esta lista de tuplas es como filas de
datos en una hoja de cálculo” o “una comprensión de listas es la misma
idea que aplicar una operación a una columna de la hoja de cálculo y
colocar el resultado en una columna diferente”. La idea clave es
permanecer centrado en un entorno del mundo real en lugar de desviarse
hacia problemas esotéricos de “ciencia informática” (por ejemplo, “vamos
a calcular los números de Fibonacci”).

Este dominio de problemas también funciona bien para introducir otros
temas de programación. Por ejemplo, los científicos o ingenieros pueden
querer saber sobre análisis de datos o gráficos. Por lo tanto, puede
mostrarles cómo hacer un gráfico usando matplotlib. Los programadores
web pueden querer saber cómo presentar datos del mercado de valores en
una página web. Por lo tanto, puede hablar sobre motores de plantillas.
Los administradores de sistemas pueden querer hacer algo con archivos de
registro. Por lo tanto, puede indicarles un archivo de registro de datos
bursátiles en tiempo real. Los ingenieros de software pueden querer
saber sobre diseño. Por lo tanto, puede pedirles que busquen formas de
encapsular datos bursátiles dentro de un objeto o hacer que un programa
sea extensible (por ejemplo, cómo hacer que este programa produzca
resultados en 10 formatos de tabla diferentes). Ya entiende la idea.

## Pautas de presentación

Las diapositivas de la presentación (notas) están ahí para brindar una
estructura narrativa al curso y para que los estudiantes las utilicen
como referencia cuando trabajan en ejercicios. No repase laboriosamente
cada punto de cada diapositiva; suponga que los estudiantes pueden leer
y que tendrán tiempo para volver a leer cuando estén codificando. Suelo
repasar las diapositivas a un ritmo bastante rápido, mostrando ejemplos
breves de manera interactiva a medida que avanzo. A menudo me salto
diapositivas por completo a favor de demostraciones en vivo. Por
ejemplo, no es necesario hacer un montón de diapositivas con listas.
Simplemente vaya al intérprete y haga algunos ejemplos de listas en
vivo. Regla general: no más de 1 minuto por diapositiva, a menos que sea
algo inusualmente complicado. Honestamente, probablemente podría omitir
la mayoría de las diapositivas y simplemente dar una clase con
demostraciones en vivo si siente que funciona para usted. A menudo lo
hago.

## Ejercicios del curso

El curso tiene alrededor de 130 ejercicios prácticos. Si haces cada uno
de los ejercicios y les das tiempo a los estudiantes para pensar y
codificar, probablemente les llevará entre 10 y 12 horas. En la
práctica, probablemente encontrarás que los estudiantes necesitan más
tiempo en ciertos ejercicios. Tengo algunas notas sobre esto a
continuación.

Debes enfatizar repetidamente a los estudiantes que el código de la
solución está disponible y que está bien mirarlo y copiarlo,
especialmente debido a los requisitos de tiempo.

Antes de enseñar el curso, te recomiendo encarecidamente que revises y
trabajes en cada uno de los ejercicios del curso para que no haya
sorpresas.

Durante la impartición del curso, generalmente trabajo en cada uno de
los ejercicios desde cero, sin mirar la solución, en mi computadora
mientras los estudiantes también trabajan. Para esto, te recomiendo
encarecidamente que tengas una copia impresa de los ejercicios a mano
que puedas mirar sin tener que abrirla en la pantalla de la computadora
(que se está proyectando). Cerca del final del período de tiempo del
ejercicio, comenzaré a analizar mi código de solución, enfatizaré
diferentes partes en la pantalla y hablaré sobre ellas. Si hay algún
problema potencial con la solución (incluidas consideraciones de
diseño), también hablaré de ello.

Enfatice a los estudiantes que tal vez quieran ver o copiar el código de
la solución antes de continuar.

## Contenido

### Sección 1: Introducción

El objetivo principal de esta sección es que las personas se
familiaricen con el entorno. Esto incluye el uso del shell interactivo y
la edición/ejecución de programas cortos. Al final de la sección, los
estudiantes deberían poder escribir scripts cortos que lean archivos de
datos y realicen pequeños cálculos. Conocerán los números, las cadenas,
las listas y los archivos. También habrán tenido algo de exposición a
funciones, excepciones y módulos, pero faltarán muchos detalles.

La primera parte de este curso suele ser la más larga porque los
estudiantes son nuevos en las herramientas y pueden tener varios
problemas para hacer que las cosas funcionen. Es absolutamente
fundamental que recorra el salón y se asegure de que todos puedan
editar, ejecutar y depurar programas simples. Asegúrese de que Python
esté instalado correctamente. Asegúrese de que hayan descargado los
ejercicios del curso. Asegúrese de que Internet funcione. Arregle
cualquier otra cosa que surja.

Tiempo: Mi objetivo es terminar la sección 1 alrededor del almuerzo del
primer día.

### Sección 2: Trabajar con datos

Esta sección es probablemente la más importante del curso. Abarca los
conceptos básicos de la representación y manipulación de datos,
incluidas tuplas, listas, diccionarios y conjuntos.

La sección 2.2 es la más importante. Dé a los estudiantes todo el tiempo
que necesiten para que los ejercicios funcionen dentro de lo razonable.
Según la audiencia, los ejercicios pueden durar 45 minutos. En la mitad
de este ejercicio, a menudo avanzo a la Sección 2.3 (impresión
formateada) y les doy a los estudiantes más tiempo para seguir
trabajando. Juntas, las Secciones 2.2/2.3 pueden llevar una hora o más.

La Sección 2.4 hace que las personas exploren el uso de enumerate() y
zip(). Considero que estas funciones son esenciales, así que no escatime
en ella.

La Sección 2.5 presenta el módulo de colecciones. Hay MUCHO que podría
decirse sobre las colecciones, pero los estudiantes no lo entenderán por
completo en este momento. Aborde esto más desde el punto de vista de
“aquí está este módulo interesante que debería ver más adelante. Aquí
hay algunos ejemplos interesantes”.

La Sección 2.6 presenta las comprensiones de listas, que son una
característica importante para procesar datos de listas. Enfatice a los
estudiantes que las comprensiones de listas son muy similares a cosas
como las consultas de bases de datos SQL. Al final de este ejercicio, a
menudo hago una demostración interactiva que involucra algo más
avanzado. Tal vez haga una comprensión de listas y trace algunos datos
con matplotlib. También es una oportunidad para presentar Jupyter si así
lo desea.

La Sección 2.7 es el ejercicio más sofisticado. Se relaciona con el uso
de datos de primera clase en Python y el hecho de que las estructuras de
datos como las listas pueden contener cualquier tipo de objeto que
desee. Los ejercicios están relacionados con el análisis de columnas de
datos en archivos CSV y los conceptos se reutilizan posteriormente en la
Sección 3.2.

Tiempo: lo ideal es terminar con la Sección 2 el primer día. Sin
embargo, es común terminar con la Sección 2.5 o 2.6. Por lo tanto, no se
asuste si siente que está un poco atrasado.

### Sección 3: Organización del programa

El objetivo principal de esta sección es presentar más detalles sobre
las funciones y alentar a los estudiantes a usarlas. La sección se
construye a partir de funciones en módulos y escritura de scripts.

La Sección 3.1 trata sobre pasar de la simple “creación de scripts” a
las funciones. Se debe disuadir a los estudiantes de escribir “scripts”
desorganizados. En cambio, el código debe al menos modularizarse en
funciones. Hace que el código sea más fácil de entender, facilita la
realización de cambios posteriormente y, de hecho, se ejecuta un poco
más rápido. Las funciones son buenas.

La Sección 3.2 es probablemente el conjunto de ejercicios más avanzado
de todo el curso. Hace que los estudiantes escriban una función de
utilidad de propósito general para analizar datos orientados a columnas.
Sin embargo, hace un uso intensivo de listas por comprensión, así como
de listas de funciones (por ejemplo, funciones como objetos de primera
clase). Probablemente necesitará guiar a las personas a través de cada
paso de este código, mostrando cómo funciona con gran detalle. Sin
embargo, la recompensa es enorme: puede mostrar a las personas una
función de propósito general corta que hace algo increíblemente poderoso
y que sería prácticamente imposible de escribir en C, C++ o Java sin
tener *MUCHO* código muy complicado. Hay muchas posibles vías de
diseño/discusión para este código. Use su imaginación.

La Sección 3.3 agrega el manejo de errores a la función creada en la
Sección 3.2. Este es un buen momento para hablar sobre el manejo de
excepciones en general. Definitivamente, hable sobre los peligros de
capturar todas las excepciones. Este podría ser un buen momento para
hablar sobre el elemento “Los errores nunca deben pasar silenciosamente”
en el “Zen de Python”.

*Nota: Antes del Ejercicio 3.4, asegúrese de que los estudiantes
obtengan versiones completamente funcionales de report.py, pcost.py y
fileparse.py. Cópielas de la carpeta Soluciones si es necesario*

La Sección 3.4 presenta las importaciones de módulos. El archivo escrito
en la Sección 3.2-3.3 se utiliza para simplificar el código en la
Sección 3.1. Tenga en cuenta que es posible que deba ayudar a los
estudiantes a solucionar problemas con IDLE, sys.path y otras
configuraciones variadas relacionadas con la importación.

La sección 3.5 habla sobre argumentos lineales. Puede que te sientas
inclinado a hablar de un módulo como argparse. Sin embargo, ten en
cuenta que hacerlo abre un atolladero. Por lo general, es mejor
simplemente mencionarlo y seguir adelante.

La sección 3.6 abre una discusión sobre el diseño en general en Python.
¿Es mejor escribir código que sea más flexible en lugar de código que
esté programado para trabajar solo con nombres de archivo? Este es el
primer lugar en el que se realiza un cambio de código y se debe
refactorizar el código existente.

A partir de aquí, la mayoría de los ejercicios realizan pequeños cambios
en el código que ya se ha escrito.

### Sección 4: Clases y objetos

Esta sección trata sobre programación orientada a objetos muy básica. En
general, no es seguro asumir que las personas tienen muchos
conocimientos de OO. Por lo tanto, antes de comenzar, suelo describir en
general el “estilo” de OO y cómo se agrupan sus datos y métodos. Realice
algunos ejemplos con cadenas y listas para ilustrar que son “objetos” y
que los métodos (invocados mediante .) hacen cosas con el objeto.
Enfatice cómo los métodos están asociados al objeto en sí. Por ejemplo,
usted hace items.append(x), no llama a una función separada
append(items, x).

La Sección 4.1 presenta la declaración de clase y muestra a las personas
cómo crear un objeto básico. En realidad, esto solo presenta las clases
como otra forma de definir una estructura de datos simple, en relación
con el uso de tuplas y diccionarios para este propósito en la Sección 2.

La Sección 4.2 trata sobre la herencia y cómo se usa para crear
programas extensibles. Este conjunto de ejercicios es probablemente el
más significativo en términos de programación orientada a objetos y
diseño orientado a objetos. Dé a los estudiantes mucho tiempo para
trabajar en él (30-45 minutos). Dependiendo del interés, puede pasar
MUCHO tiempo discutiendo aspectos de la orientación a objetos. Por
ejemplo, diferentes patrones de diseño, jerarquías de herencia, clases
base abstractas, etc.

La Sección 4.3 realiza algunos experimentos con métodos especiales. No
dedicaría demasiado tiempo a perder el tiempo con esto. Los métodos
especiales aparecen un poco más adelante en el Ejercicio 6.1 y en otras
partes.

Tiempo: Esto suele ser al final del segundo día.

### Sección 5: Dentro de los objetos

Esta sección lleva a los estudiantes detrás de escena del sistema de
objetos y cómo se construye utilizando diccionarios, cómo se vinculan
las instancias y las clases y cómo funciona la herencia. Sin embargo, la
parte más importante de esta sección es probablemente el material sobre
encapsulación (atributos privados, propiedades, ranuras, etc.)

La Sección 5.1 simplemente quita las cubiertas y hace que los
estudiantes observen y jueguen con los diccionarios subyacentes de
instancias y clases.

La Sección 5.2 trata sobre ocultar atributos detrás de funciones get/set
y el uso de propiedades. Normalmente hago hincapié en que estas técnicas
se utilizan comúnmente en bibliotecas y marcos de trabajo, especialmente
en situaciones en las que se desea un mayor control sobre lo que se le
permite hacer a un usuario.

Un experto en Python notará que no hablo en absoluto sobre temas
avanzados como descriptores o métodos de acceso a atributos
(`__getattr__`, `__setattr__`). He descubierto, a través de la
experiencia, que esto es demasiada sobrecarga mental para los
estudiantes que toman el curso de introducción. La cabeza de todos ya
está al borde de explotar en este punto y si hablas sobre cómo funcionan
algo como los descriptores, los perderás por el resto del día, si no por
el resto del curso. Guárdalo para un curso de “Python avanzado”.

Si estás mirando el reloj pensando “No hay manera de que vaya a terminar
este curso”, puedes saltarte la sección 5 por completo.

### Sección 6: Generadores

El objetivo principal de esta sección es presentar los generadores como
una forma de definir iteraciones personalizadas y utilizarlos para
diversos problemas relacionados con el manejo de datos. Los ejercicios
del curso hacen que los estudiantes analicen transmisiones de datos en
forma de actualizaciones de stock que se escriben en un archivo de
registro.

Hay dos grandes ideas que destacar. Primero, los generadores se pueden
utilizar para escribir código basado en el procesamiento incremental.
Esto puede ser muy útil para cosas como la transmisión de datos o
conjuntos de datos enormes que son demasiado grandes para quepa en la
memoria de una sola vez. La segunda idea es que se pueden encadenar
generadores/iteradores para crear canales de procesamiento (algo así
como las tuberías de Unix). Nuevamente, esta puede ser una forma
realmente poderosa de procesar y pensar en transmisiones, conjuntos de
datos grandes, etc.

Algunas omisiones: aunque se describe el protocolo de iteración, las
notas no detallan la creación de objetos iterables (es decir, clases con
`__iter__()` y `next()`). En la práctica, he descubierto que no es
necesario hacer esto tan a menudo (los generadores suelen ser
mejores/más fáciles). Por lo tanto, en aras del tiempo, he tomado la
decisión consciente de omitirlo. Tampoco se incluyen los generadores
extendidos (corrutinas) ni los usos de los generadores para la
concurrencia (tasklets, etc.). Eso es mejor que se trate en cursos
avanzados.

### Sección 7: Temas avanzados

Básicamente, esta sección es una variedad de temas más avanzados que
podrían haberse tratado antes, pero no se hicieron por varias razones
relacionadas con el flujo del curso y el contenido de los ejercicios del
curso. Si quieres saber, solía presentar este material antes en el
curso, pero ya estaba sobrecargado con suficiente información. Volver a
él más tarde parece funcionar mejor, especialmente porque a esta altura,
todos están mucho más familiarizados con el trabajo en Python y
comienzan a entenderlo.

Los temas incluyen argumentos de funciones variádicas (\*args,
\*\*kwargs), lambda, cierres y decoradores. La discusión de decoradores
es solo una pequeña pista de lo que es posible con la metaprogramación.
Siéntete libre de decir más sobre lo que es posible, ¡pero probablemente
me mantendría alejado de las metaclases! Últimamente, he estado
demostrando “numba” como un ejemplo de un decorador más interesante.

Si tiene poco tiempo, puede omitir la mayor parte de la sección 7 o
comprimirla en gran medida (por ejemplo, puede omitir ejercicios).

### Sección 8: Pruebas y depuración

El objetivo principal de esta sección es simplemente presentar varias
herramientas y técnicas relacionadas con las pruebas, la depuración y el
desarrollo de software. Muestre a todos el módulo unittest. Presente el
módulo de registro. Discuta las afirmaciones y la idea de los
“contratos”. Muestre a las personas el depurador y el generador de
perfiles. La mayor parte de esto se explica por sí solo.

### Sección 9: Paquetes

En este punto, los estudiantes han escrito una variedad de archivos
(pcost.py, report.py, fileparse.py, tableformat.py, stock.py,
portfolio.py, follow.py, etc.). Dos objetivos principales en esta
sección. Primero, poner todo el código en una estructura de paquete
Python. Esta es solo una introducción suave a eso, pero moverán los
archivos a un directorio y todo se romperá. Tendrán que corregir sus
declaraciones de importación (importaciones relativas a paquetes) y tal
vez modificar un archivo `__init__.py`. Segundo objetivo: escribir un
archivo setup.py simple que puedan usar para empaquetar el código y
dárselo a alguien. Eso es todo. Fin del curso.

[Contenido](Contenido.Rmd)
