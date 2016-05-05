# Taller #4: Clases 2: La Herencia

En la clase anterior revisamos el concepto de **Clase** y **Objeto**.

Pregunta: Cual es la diferencia entre una Clase y un Objeto?

- La **Clase** es una estructura estatica que define propiedades y metodos
- Un **Objeto** es la instancia de una clase

En un programa, por lo general, trabajamos con instanacias de las clases (objetos).

Por ejemplo: 
```
palabra = String.new
# => ""

palabra.length
# => 0 
``` 


```
mi_dado = Dado.new

mi_dado.lanzar
```

### Como se compone una clase:

- Propiedades (que despues se convierten en Variables de Instancia)
- Metodos

Por Ejemplo:

```
class Dado
  
  # Propiedad
  @numero_seleccionado
  
  # Metodo
  def lanzar
    @numero_seleccionado = 1 + rand(6)
  end

end
  
```

## Herencia

Una de las propiedades mas importantes que tienen las clases, es su capacidad de ser extendidas. A esto le llamamos **herencia de clases**.

En terminos simples, yo puedo tomar como base una clase, y generar una nueva, agregando nuevas propiedades y metodos.

Por Ejemplo:
```
class Dado

  @numero_seleccionado

  def lanzar
    @numero_seleccionado = 1 + rand(6)
  end

end

# Extendiendo el comportamiento de una clase

class DadoDoble < Dado

  @segundo_numero_seleccionado

  def lanzar_segundo_dado
    @segundo_numero_seleccionado = 1 + rand(6)
  end

end

mi_dado = DadoDoble.new
mi_dado.lanzar
# => 2
mi_dado.lanzar_segundo_dado
# => 6

```
