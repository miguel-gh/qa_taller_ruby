# Taller #4: Ejercicios

### Ejercicio #1

Corrija el siguiente codigo para que funcione.
 
```
class Persona

  def initialize(nombre)
    @nombre = nombre
  end
  
  def saludar(otro_nombre)
    puts "Hola #{otro_nombre}! me llamo #{nombre}"
  end

end
```

### Ejercicio #2

Considerando la siguiente clase:

```
class Libro

  def initialize(titulo, autor)
    @titulo = titulo
    @autor = autor
  end
  
  def autor
    @autor
  end

  def titulo
    @titulo
  end

end
``` 

* Escriba una clase que se llame `Biblioteca`, la cual permita almacenar muchos libros.

