# Controlando el Flujo de Control

password = ''
while password.length != 8
	puts "Ingrese una contraseña de 8 caracteres..."
	password = gets.chomp
end
puts "Gracias."


# Ejercicios:

# Hacer un programa que imprima en pantalla los todos los pares de 0 a 100
# Ahora, ese programa debe imprimir tambien los multiplos de 5


















=begin

num = 0
while num <= 100
	if num.even?
		puts num
	end
	if (num % 5) == 0
		puts num
	end
	num = num.next
end
=end
