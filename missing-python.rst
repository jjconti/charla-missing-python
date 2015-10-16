¿Qué extraño de Python?
=======================

.. image:: llorando.jpg

por `Juanjo Conti <http://www.juanjoconti.com>`_

jjconti@gmail.com

@jjconti

.. class:: hide-title

.
=

**¿Qué extrañé (y qué no) de Python en los últimos cuatro lenguajes con los que trabajé?**
------------------------------------------------------------------------------------------

.. image:: llorando.jpg

por `Juanjo Conti <http://www.juanjoconti.com>`_

jjconti@gmail.com

@jjconti


.. Pasaron varios años ya desde la última vez que utilicé Python profesionalmente.
   Desde aquel entonces, transité diversos caminos y aprendí nuevas tecnologías. 
   Pero, como pasa con la primera novia, no puedo dejar de compararlo con cada nuevo
   lenguaje con el que trabajo.
   Analizo y comparo características de los distintos lenguajes.

Primera novia
=============

Balada de la primera novia, Alejandro Dolina

(El libro del fantasma)

    El poeta Jorge Allen tuvo su primera novia a la edad de doce años. Guarden las personas mayores sus sonrisas condescendientes. Porque en la vida de un hombre hay pocas cosas más serias que su amor inaugural.

Primera novia
=============

    Después de una triste fiestita de fin de curso, ya no volvió a verla ni a tener noticias de ella. Sin embargo siguió queriéndola a lo largo de sus años. Jorge Allen se hizo hombre y vivió formidables gestas amorosas. Pero jamas dejo de llorar por la morocha ausente.

Los lenguajes
=============

.. class:: fragment

PHP: el feo

.. class:: fragment

Ruby: el gemelo malvado

.. class:: fragment

Swift: el nuevo

.. class:: fragment

Clojure: el raro

PHP
===

El feo.

.. image:: feo.jpg

.. PHP es un lenguaje interpretado, de alto nivel con tipado dinámico y dévil.

http://phpepl.herokuapp.com/

PHP
===

.. No había agregado este item en mi presentación original, 
   pero me fue evidente cuando me puse a probar ejemplos.
   
.. Si en PHP usás el keyword echo con una función, obtenés un mensaje de error.
   La solución es usar print_r.
   
* La no necesidad de terminar las líneas con ;
* Todos los objetos pueden ser representados como strings
* Antes de 5.4 no se podía desreferenciar llamadas a funciones

.. class:: prettyprint lang-php

::

    $a[1]()

PHP
===

Extraño una sintaxis simple para rebanar arrays

(y otras operaciones con arrays)

.. class:: prettyprint lang-php

::

    $a = array("a", "b", "c", "d", "e");

    array_slice($a, 2); // "c", "d", "e"
    
    array_slice($a, -2, 1); // "d"
    
    array_slice($a, 0, 3); // "a", "b", "c"
    
PHP
===

En Python:

.. class:: prettyprint lang-python

::

    a = ["a", "b", "c", "d", "e"]
    
    a[2:] # ['c', 'd', 'e']
    
    a[-2:-1] # ['d']
    
    a[:3] # ['a', 'b', 'c']
    
    a[::2] # ['a', 'c', 'e']  
    
PHP
===

Algo parecido con strings

.. class:: prettyprint lang-php

::

    substr("abcdef", -1); // "f"
    
    substr("abcdef", -2); // "ef"
    
    substr("abcdef", -3, 1); // "d"

PHP
===

En Python:

.. class:: prettyprint lang-python

::

    "abcdef"[-1:] # 'f'
    
    "abcdef"[-2:] # 'ef'
    
    "abcdef"[-3:-2] # 'd'
    
    "abcdef"[::-2] # 'fdb'


PHP
===

Listas por comprensión

.. class:: prettyprint lang-php

::
 
    array_map(function($x) {
        return $x*$x;
    }, range(0, 9))

.. class:: fragment


.. class:: prettyprint lang-python

::

    [x*x for x in range(10)]

PHP
===

Listas por comprensión

.. class:: prettyprint lang-php

::

    array_filter(
        array_map(...)
    )

.. class:: fragment

.. class:: prettyprint lang-python

::

    [x*x for x in range(10) if x > 4]

PHP (NO)
========

    Python puede hacerte un mejor programador porque el lenguaje es consistente,
    toma buenas ideas de la programación funcional, es limpio, fácil de leer
    y tiene un montón de constructores útiles como decoradores, iteradores,
    y listas por comprensión.

Ruby
====

.. image:: gemelo.png

* Basado en la charla Ruby para programadores Python de PyConAr 2014. 
* http://nbviewer.ipython.org/github/jjconti/aprendiendo-ruby/blob/master/RubyDesdePython.ipynb

.. class:: hide-title

.
=

Diferencias
-----------

* Todo tiene valor de verdad `true` excepto `false` y `nil`
* Los strings son mutables
* Arrays, Hashes
* Símbolos
* Bloques
* Algunos métodos
* Cuestiones sintácticas

Valores de verdad
-----------------

Todo tiene valor de verdad `true` excepto `false` y `nil`

.. class:: prettyprint lang-ruby

::

    def que_es obj
      obj 
      ? "#{obj} es true" 
      : "#{obj} es false"
    end

.. class:: fragment

.. class:: prettyprint lang-ruby

::

    que_es [] # "[] es true"
    
    que_es 1 # "1 es true"
    
    que_es false # "false es false"
    
Strings mutables
----------------

.. class:: prettyprint lang-ruby

::

    s = "Cactus"
    s[0] = 'KKKK'

.. class:: fragment

.. class:: prettyprint lang-ruby

::

    "KKKKactus"

Arrays
------

* Arrays y sus índices

.. class:: prettyprint lang-ruby

::

    a = []
    a[2] = 1

.. class:: fragment

.. class:: prettyprint lang-ruby

::

    [nil, nil, 1]
  
.. class:: fragment

.. class:: prettyprint lang-ruby

::
   
     a[10] # nil

Array * string
--------------

.. class:: prettyprint lang-ruby

::

    array = [1, 2, 3, 4, 100]
    array * 2

    [1, 2, 3, 4, 100, 1, 2, 3, 4, 100]
    
.. class:: fragment

.. class:: prettyprint lang-ruby

::

    array * '|'

    "1|2|3|4|100"

.. class:: fragment

.. class:: prettyprint lang-ruby

::

    [1, [2,3], 4, [[[5]]]] * ','

    "1,2,3,4,5"

Hashes
------

Recuerdan el orden de inserción.

.. class:: prettyprint lang-ruby

::

    h = {}
    h[1] = "a"
    h[2] = "b"
    h[3] = "c"
    h.delete(1)
    h[1] = "A"
    h.keys

.. class:: fragment

.. class:: prettyprint lang-ruby

::

    [2, 3, 1]

Hashes
------

Se pueden usar objetos mutables como claves

.. class:: prettyprint lang-ruby

::

    a = []; h = {a => 2}
    h.default = 'defecto'
    a << 1

    {[1]=>2}

.. class:: fragment

.. class:: prettyprint lang-ruby

::

    h[a] # "defecto"

.. class:: fragment

.. class:: prettyprint lang-ruby

::

    h.rehash; h[a]

    2

Símbolos
--------

.. class:: prettyprint lang-ruby

::

    :simbolo
    :"Con espacios"

    "hola".object_id # 70262217568780
    "hola".object_id # 70262213790460

    :hola.object_id # 1171208
    :hola.object_id # 1171208

Sintaxis
--------

<expresion> if <condición>

.. class:: prettyprint lang-ruby

::

    a = 1 if true

.. class:: fragment

.. class:: prettyprint lang-ruby

::

    api_key = "zzzzzzz" if env.production?

.. class:: fragment

.. class:: prettyprint lang-ruby

::

    if true
      puts "no no no no"
    end if false


Sintaxis
--------

El parser ve aunque no ejecute.

.. Para saber que existe una variable, no necesita haber ejecutado su asginación. Alcanza con que el parser la haya visto.

.. class:: prettyprint lang-ruby

::

    q.nil? # NameError
    
    q = 1 if q.nil? # 1
    

.. class:: fragment

.. class:: prettyprint lang-ruby

::
   
    if false
      f = 1
    end
    f.inspect # nil

Sintaxis
--------

Parámetros con valores por defecto referenciando parámetros previos.

.. class:: prettyprint lang-ruby

::

    def parametros a, b=a*2
      [a, b]
    end

    parametros 10

.. class:: fragment

.. class:: prettyprint lang-ruby

::

    [10, 20]
    
Sintaxis
--------

Captura genérica de parámetros no necesariamente al final.

.. class:: prettyprint lang-ruby

::

    def ejemplo(a, *b, c)
        puts [a, b, c]
    end

    ejemplo 1, 2, 3, 4, 5

.. class:: fragment

.. class:: prettyprint lang-ruby

::

    [1, [2, 3, 4], 5]
    
Swift
=====

Es un lenguaje compilado y de tipado estático, pero tiene inferencia de tipos.

.. image:: mapple.jpg

.. class:: hide-title

.
=

Swift
-----

.. class:: prettyprint lang-swift

::

    var s = "Hola"

    var s : String = "Hola"
    
* Permite definir constantes: `let`
* Los enteros tienen límite (en Python no)
* Nombres de métodos más largos/dificiles de recordar

  - `upper`/`uppercaseString`
  - `startswith`/`hasPrefix`

* Usar listas o diccionarios con distintos tipos de datos puede llevar a complicaciones
* Swift tiene bloques como Ruby

Seguridad
---------

* Intenta ser un lenguaje seguro, evitando excepciones de punteros nulos:

.. class:: prettyprint lang-swift

::

    var str = "Hola, PyDay"
    str = nil 
    
    // Cannot assign a value of type 'nil'
    // to a value of type 'String'

Opcionales
----------

En Swift, las referencias a objetos por lo general no puden valer `nil`, a menos
que la variable en cuestión sea explícitamente declarada como valor opcional:

.. class:: prettyprint lang-swift

::

    var str : String? = "Hola, PyDay"

El signo de pregunta luego del tipo indica que la variable str es un opcional.
Su valor puede o no existir.

Opcionales
----------

Cuando las variables se declaran como opcionales, deben ser usadas en un
contexto donde se esperan opcionales o explícitamente "unwrapped"
para revelar el valor subyasente.

.. class:: prettyprint lang-swift

::

    print(str) // Optional("Hola, PyDay")
    print(str!) // "Hola, PyDay"

    str + ", Bienvenido"
    // Value of optional type 'String?'
    // not unwrapped

Opcionales
----------

.. class:: prettyprint lang-swift

::

    str! + ", Bienvenido"

    str = nil

    str! + ", Bienvenido"
    // Error en tiempo de ejecución

    if str {
        str! + ", Bienvenido"
    }

Copia no opcional
-----------------

Copiar como no opcional en un *scope*.

.. class:: prettyprint lang-swift

::

    if let str = str {
        str + ", Bienvenido"
    }

    if let nombre = persona.nombre_completo {
        nombre + ", Bienvenido"
    }

Copia no opcional mutable
-------------------------

Se puede usar `var` en lugar de `let` para hacer una copia mutable:

.. class:: prettyprint lang-swift

::

    if var producto = producto_sel {
        producto.baja()
        print(producto.stock())
    }

.. class:: hide-title

Asignaciones
------------

Una variable declarada como opcional, no se puede asignar a una
no declarada como opcional:

.. class:: prettyprint lang-swift

::

    var n: String = str 
    // produce un error en tiempo 
    // de compilación

Al igual que si se trata de asignar `nil` a una variable no declarada como opcional.

Optional chaining
-----------------

.. class:: prettyprint lang-swift

::
 
    if object.other?.more?.property {
        // existe la propiedad
    } else {
        // NO existe la propiedad
    }

Más información en el capítulo Optionals de Swift pocket reference


Clojure
=======

.. image:: raro.jpg

Funcional.

Todos los valores son inmutables.

.. class:: hide-title

.
=

Ejemplo
-------

.. class:: prettyprint lang-clj

::

    (+ 1 1)

    (conj '(1 2 3) (+ 2 2))

Macros
------

.. class:: prettyprint lang-clj

::

    (defmacro postfix-notation
      "I'm too indie for prefix notation"
      [expression]
      (conj (butlast expression)
            (last expression)))

    (postfix-notation (1 1 +))
    ; 2
    (macroexpand '(postfix-notation (1 1 +)))
    ; (+ 1 1)

Ej en Ruby
----------

.. class:: prettyprint lang-ruby

::

    assert_difference("User.count()", 1) do
      add_user_to_database()
    end
 
    assert_difference("User.count()", 0) do
      modify_user_on_the_database()
    end
 
    assert_difference("User.count()", -1) do
      remove_user_from_the_database()
    end

Ej en Clojure
-------------

.. class:: prettyprint lang-clj

::

    (assert-difference (users-count) 1
                       (add-user 'ramon2))

    (assert-difference (users-count) 0
                       (update-user 'ramon))

    (assert-difference (users-count) -1
                       (remove-user 'ramon))
                   
Solución
--------

.. class:: prettyprint lang-clj

::

    (defmacro 
        assert-difference 
        [form delta & body]
        `(let [count# ~form]
            ~@body
             (is (= 
                 (+ count# ~delta) 
                 ~form))))


Preguntas
=========

¿?

Notas
=====

Más información
---------------

* PHP: http://phpepl.herokuapp.com/
* Ruby: http://nbviewer.ipython.org/github/jjconti/aprendiendo-ruby/blob/master/RubyDesdePython.ipynb
* Swift: Swift pocket reference y Swift development with Cocoa (O'Reilly)
* Clojure: https://carouselapps.com/tag/clojure/

La presentación
---------------

* http://www.juanjoconti.com/charlas/missing-python/
* Fuentes: https://github.com/jjconti/charla-missing-python
* Hecha con https://github.com/marianoguerra/rst2html5/