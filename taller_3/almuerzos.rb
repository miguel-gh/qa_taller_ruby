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
puts

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

puts
puts "Gracias por su preferencia!"
