# Loops: Ejemplo 2

command = "Diga 'me tengo que ir' para salir."

while command != 'me tengo que ir'
	puts command
	command = gets.chomp
end
puts 'bye.'
