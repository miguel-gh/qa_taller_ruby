# Flow Control: Ejemplo 1

password = ''

puts "Ingrese una contraseña de 8 caracteres..."
while password.length != 8
	password = gets.chomp
	
	if password.length < 8
		puts "Contraseña muy CORTA. \nIntente de nuevo..."
	elsif password.length > 8
		puts "Contraseña muy LARGA. \nIntenta de nuevo..."
	end
end
puts "Gracias."
