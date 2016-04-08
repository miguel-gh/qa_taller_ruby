# Taller 2 > Arrays 


## Creando Arrays

```
arr = [1, "dos", 3.0] # => [1, "dos", 3.0]
arr = Array.new # => []
arr = Array.new(3) # => [nil, nil, nil]
arr = Array.new(3, true) # => [true, true, true]
arr = Array.new(4) { Array.new(3) } 
```

## Accediendo a los Arreglos

Podemos acceder a los elementos de un Array de la siguiente forma:

```
arr = [1, 2, 3, 4, 5, 6]
```

```
# arr[ _posicion_ ]
arr[2] # => 3
arr[100] # => nil
arr[-3] # => 4
arr[2, 3] # => [3, 4, 5]
arr[1..4] # => [2, 3, 4, 5]
arr[1..-3] # => [2, 3, 4]

arr.at(0) 
```


## Obteniendo Informacion de los Arreglos

```
browsers = ['Chrome', 'Firefox', 'Safari', 'Opera', 'IE']
browsers.length #=> 5
browsers.count #=> 5
```

Esta vacio el arreglo?
```
browsers.empty? #=> false
```

Existe el navegador 'Netscape'?
```
browsers.include?('Konqueror') #=> false
```

## Agregando Elementos

```
arr = [1, 2, 3, 4]
arr.push(5) #=> [1, 2, 3, 4, 5]
arr << 6    #=> [1, 2, 3, 4, 5, 6]
```

Agregando elementos al comienzo.

```
arr.unshift(0) #=> [0, 1, 2, 3, 4, 5, 6]
```

Insertando Elementos en cualquier lugar.
```
arr.insert(3, 'apple')  #=> [0, 1, 2, 'apple', 3, 4, 5, 6]
```


## Removiendo Elementos 
```
arr =  [1, 2, 3, 4, 5, 6]
arr.pop #=> 6
arr #=> [1, 2, 3, 4, 5]
```

Eliminar un elemento en una posicion en particular.
```
arr.delete_at(2) #=> 4
arr #=> [2, 3, 5]
```

Eliminar un elemento en particular.
```
arr = [1, 2, 2, 3]
arr.delete(2) #=> 2
arr #=> [1,3]
```

Si quieres eliminar valores `nil` en un listado, puedes usar `compact`

```
arr = ['foo', 0, nil, 'bar', 7, 'baz', nil]
arr.compact  #=> ['foo', 0, 'bar', 7, 'baz']
arr          #=> ['foo', 0, nil, 'bar', 7, 'baz', nil]
arr.compact! #=> ['foo', 0, 'bar', 7, 'baz']
arr          #=> ['foo', 0, 'bar', 7, 'baz']
```

Eliminado Repetidos con `uniq`
```
arr = [2, 5, 6, 556, 6, 6, 8, 9, 0, 123, 556]
arr.uniq #=> [2, 5, 6, 556, 8, 9, 0, 123]
```

## Iterando Arrays

```
semana = ['Lunes', 'Martes', 'Miercoles', 'Jueves', 'Viernes', 'Sabado', 'Domingo']

semana.each do |dia|
	puts "Hoy es: #{ dia }"
end

```

Reversa.
```
semana.reverse_each do |dia|
	puts "Hoy es: #{ dia }"
end
```

## Ejercicio :)

Escribir un programa que me permita ingresar tantas palabras como yo quiera (una palabra por linea), hasta que presione `Enter` sin escribir ninguna palabra.

* Muestre cuantas palabras han sido ingresadas
* Muestre el listado ordenado alfabeticamente (pista: busque el metodo `sort` en google.)
---
Fuente: [http://ruby-doc.org/core-2.3.0/Array.html](http://ruby-doc.org/core-2.3.0/Array.html)

