# Arrays: Ejemplo 2 

semana = ['Lu', 'Ma', 'Mi', 'Ju', 'Vi', 'Sa', 'Do']

semana.each do |dia|
	puts "Hoy es: #{ dia }"
end

3.times do
	puts 'Hola!'
end


# Otros Metodos

puts semana.last
puts semana.first
puts semana.length
puts semana.pop
puts semana.to_s
puts semana.length
