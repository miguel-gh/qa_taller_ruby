## Taller #3.5: Hash (Diccionarios)

### Definición

Es una estructura de datos que almacena la informacion de manera similar a un 'Diccionario'. Tambien se les llaman 'Arreglos Asociativos'.

A diferencia de los Array, en donde utilizan numeros enteros como indices, un Hash permite utilizar cualquier objeto como indice.


```
persona = {
  'nombre' => 'Juan',
  'apellido' => 'Perez',
  'edad' => 25,
  'telefono' => 45612345
}

puts persona 

# => {"nombre"=>"Juan", "apellido"=>"Perez", "edad"=>25, "telefono"=>45612345}
```

Otras forma de definir un Hash:

```
menu = {:entrada => 'Sopa', :fondo => 'Pollo con Arroz'}

menu = { entrada: 'Sopa', fondo: 'Pollo con Arroz'}

menu[:entrada] # => 'Sopa'

```  

### Usos Comunes 

Por lo general, los Hash representan datos como:

```
alumno = {}
alumno[:nombre] = "Juan"
alumno[:apellido] = "Perez"
alumno[:edad] = 20
```

Tambien es muy comun verlos como parametros de entrada en un metodo:

```
registrar_usuario(usuario: "Miguel", password: "Tinet22")

def registrar_usuario(params)
  user = params[:usuario]
  pass = params[:password]
  puts user, pass
end
```


### Iterando un Hash

De una forma muy similar a lo que haciamos con los Array:

```
mi_hash = {}
mi_hash[:valor1] = 1
mi_hash[:valor2] = 2

mi_hash.each do |key, value|
  puts key, value
end

```

---
fuente: [http://ruby-doc.org/core-2.3.1/Hash.html#top](http://ruby-doc.org/core-2.3.1/Hash.html#top)
