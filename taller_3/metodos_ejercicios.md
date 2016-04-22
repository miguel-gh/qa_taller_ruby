# Metodos II: El Regreso

---

### Sumas

Cree un programa en ruby que me permita ingresar la cantidad de numeros que yo desee, y luego me entregue la suma de todos esos numeros.

*Consideraciones*: 

* El programa debe funcionar de forma similar a lo que hicimos anteriormente en el "contador de palabras"
* El programa de tener al menos 1 metodo
* El programa de solo recibir Numeros. No Palabras.

*Tips:*

* Para validar un numero, usar la funcion `is_a?` por ejemplo:

```
> 100.is_a? Numeric
> true
	
> "asd".is_a? Numeric
> false

> var = 100
> var.is_a? Numeric
> true

> resp = 100.is_a? Numeric
> puts resp # => true

> if var.is_a? Numeric
> 	puts "Es Numero!"
> else
> 	puts "No es Numero!"
> end

```

** Tiempo: 30 min. **


### Adivine la Pelicula

El juego consiste en lo siguiente:

- Es un programa que le presenta al usuario un total de 3 pistas.
- Cada pista es una frase que intenta explicar la trama de una pelicula, sin nombrar Actores ni decir el Titulo de la Pelicula.
- El usuario tiene 3 intentos para intentar adivinar que pelicula es.

Ejemplo:

```
/> Preg. 1:  "Se trata de gente pequeña"
/> blanca nieves
/> Nop...

/> Preg. 2: "Aparece un mago"
/> el mago de oz
/> Nop...

/> Preg. 3: "La gente pequeña lleva un anillo"
/> el señor de los anillos
/> GANASTE!
```

en caso de contestar mal las 3 pistas, la respuesta es:
```
/> PERDISTE! La respuesta era: el señor de los anillos
```


Escriba un programa que implemente este juego.

