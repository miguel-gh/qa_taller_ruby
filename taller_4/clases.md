# Taller #4: Clases 

Hasta el momento hemos visto diferentes clases de objetos:

* numeros enteros
* strings
* floats
* true, false
* nil

En ruby, estas clases de objetos siempre comienzan con mayuscula.

* String
* Integer
* Float
* Array
* Hash

Y cuando queremos utilizar estos objetos, lo hacemos de las siguiente forma:

```
a = String.new()    # => ""
b = Array.new()     # => []   
c = Hash.new()      # => {}
```

A lo anterior le llamamos **clases de objetos**.

Ruby, te permite crear tus propias clases de objetos. Por ejemplo, una clase Dado:

```
class Dado

    def lanzar
      1 + rand(6)
    end

end

```

Luego, podemos utilizar esta clase como queramos:

```
mi_dado = Dado.new()
puts mi_dado.lanzar  # => Esto va a entregar algun numero...

```

Y eso es todo. Asi puedes crear tus propias clases en Ruby.


### Instancias

Cuando creamos un String, por lo general decimos "eso es un string". Sin embargo, si fueramos mas estrictos, deberiamos llamarle **objeto de tipo string**.

Si fuesemos mas estrictos aun, le diriamos **una instancia de la clase String**.

Pero para los amigos, es un "string".

**nota: Una instancia de una clase X, es lo mismo que decir un objeto de tipo X**


### Variables de Instancia

Entonces, si antes hablamos de 'Variables Locales', ahora tenemos un nuevo tipo de variables a las cuales les podemos decir **variables de instancia**, lo cual significa solamente, que son variables que pertenecen a un objeto.


Por ejemplo:

```
class Dado
  
   def lanzar
      @numeroSeleccionado = 1 + rand(6)
   end

   def ver_numero
      @numeroSeleccionado
   end

end

mi_dado = Dado.new

mi_dado.lanzar

puts mi_dado.ver_numero   # => 4
puts mi_dado.ver_numero   # => 4

mi_dado.lanzar

puts mi_dado.ver_numero   # => 6
puts mi_dado.ver_numero   # => 6
```

Ahora, que pasa si muestro el numero seleccionado sin haber lanzado el dado?

Respuesta: el valor del dado sera `nil`

Para este tipo de problema, las clases tienen un metodo especial el cual se ejecuta al momento en que creamos un nuevo objeto con el metodo `new` (Dado.new)  

```
class Dado 

  def initialize
    @numeroSeleccionado = 0
  end
  
  def lanzar
     @numeroSeleccionado = 1 + rand(6)
  end

  def ver_numero
     @numeroSeleccionado
  end

end

mi_dado = Dado.new
puts mi_dado.ver_numero   # => 0
```

