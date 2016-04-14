# Taller #3: Metodos

Supongamos que tenemos el siguiente codigo:

```
puts "Pida su Almuerzo:"
puts "(Responda solo con 'si' o 'no')"

puts "Quiere Sopa de entrada?"
respuesta = gets.chomp

while not ["si", "no"].include? respuesta
	puts "Responda con 'si' o 'no', por favor."
	respuesta = gets.chomp
end

if respuesta == "no"
	puts "Quiere Ensalada de entrada?"
	respuesta = gets.chomp

	while not ["si", "no"].include? respuesta
		puts "Responda con 'si' o 'no', por favor."
		respuesta = gets.chomp
	end
	
	if respuesta == "si"
		entrada = "Ensalada"
	end

else
	entrada = "Sopa"
end

puts "Quiere Pescado Frito de fondo?"
respuesta = gets.chomp

while not ["si", "no"].include? respuesta
	puts "Responda con 'si' o 'no', por favor."
	respuesta = gets.chomp
end

if respuesta == "no"
	puts "Quiere Costillar al Horno de fondo?"
	respuesta = gets.chomp
	
	while not ["si", "no"].include? respuesta
		puts "Responda con 'si' o 'no', por favor."
		respuesta = gets.chomp
	end

	if respuesta == "no"
			puts "Quiere Lasaña de fondo?"
			respuesta = gets.chomp

			while not ["si", "no"].include? respuesta
				puts "Responda con 'si' o 'no', por favor."
				respuesta = gets.chomp
			end
			
			if respuesta == "si"
				fondo = "Lasaña"
			end

	else
		fondo = "Costillar al Horno"
	end
else 
	fondo = "Pescado Frito"
end

puts "Quiere Jalea de postre?"
respuesta = gets.chomp

while not ["si", "no"].include? respuesta
	puts "Responda con 'si' o 'no', por favor."
	respuesta = gets.chomp
end

if respuesta == "no"
	puts "Quiere Helado de postre?"
	respuesta = gets.chomp

while not ["si", "no"].include? respuesta
	puts "Responda con 'si' o 'no', por favor."
	respuesta = gets.chomp
end
	
	if respuesta == "si"
		postre = "Helado"
	end
else
	postre = "Jalea"
end

puts "***"
puts "Ok! Su pedido es:"

if entrada.nil? and fondo.nil? and postre.nil?
	puts "Usted no quiere nada!"
end

if not entrada.nil?
	puts "Entrada: #{entrada}"
end

if not fondo.nil?
	puts "Fondo: #{fondo}"
end

if not postre.nil?
	puts "Postre: #{postre}"
end
```
 
Cual piensa ud. que es el problema con este codigo?

* (a) Es dificil de entender.
* (b) Es dificil de mantener.
* (c) Las 2 anteriores (a y b).
* (d) No hay Problema. Funciona.
* (e) Hay codigo repetido.

---
*Respuesta:* ?

## Definicion de un Metodo en Ruby

De esta manera definimos un metodo:

```
def saludar
  puts "Hola!"
end

saludar # => Hola!
```

## Agregando Parametros

Muchas veces, vamos a necesitar enviarle parametros a un metodo para obtener el resultado que necesitamos.


```
def saludar numeroDeVeces
  puts "Hola!" * numeroDeVeces
end

saludar 3 # => Hola!Hola!Hola!
```

`numeroDeVeces` es una variable que apunta al parametro que se envia.

Por ejemplo: 
* El parametro es 3 y la variable `numeroDeVeces` apunta a 3 


## Variables Locales

```
def duplicar numero
  doble = numero * 2
  puts "El doble de #{numero} es #{doble}"
end

duplicar 22 
```

En este metodo existen 2 variables: `numero` y `doble`.

Ambas se encuentran *dentro* del metodo `duplicar`.

Esto significa que esas variables "viven" solamente dentro de ese metodo.

A este tipo de variables, se les llama *Variables Locales*.

```
def duplicar numero
  doble = numero * 2
  puts "El doble de #{numero} es #{doble}"
end

puts doble

#<NameError: undefined local variable or method `doble' for #<StringIO:0x007fb08b932f40>>

```

Pongan atencion al mensaje de error. Dice: `undefined local variable`. -> (o_0) ?

Nosotros si definimos una varibale local. Pero es local en el metodo.

## Variables de Retorno

La caracteristica mas util de un metodo, es que tiene la capacidad de entregarnos un resultado.

En Ruby, el valor que retorna el metodo es simplemente la ultima linea del mismo metodo.

```
def promedio a, b
  suma = a + b
  promedio = suma / 2
end

resultado = promedio 2, 6
puts "El promedio entre 2 y 6 es #{resultado}"
```

Existe una diferencia entre usar la funcion `puts` y el valor de retorno.

```
def saludar nombre
  puts "Hola! #{nombre}"
  "No quiero saludar."
end

saludar
```

## Ejercicio

* Hacer el mismo ejemplo que vimos al inicio, pero utilizando metodos.


---
Fuente: [https://pine.fm/LearnToProgram/chap_08.html](https://pine.fm/LearnToProgram/chap_08.html)
