
# Ejercicio
# Evaluar si un numero es PAR o IMPAR
# - Ingresar un Nuemero
# - Imprimir en pantalla si es par o impar.

# pista: n1 % n2 = resto de la division
# 10 / 5 =
# 10 % 5 =

puts "ingrese nro"
num = gets.chomp
#num = 101
if (num.to_i % 2) == 0
	puts "par"
elsif
	puts "impar"
end
