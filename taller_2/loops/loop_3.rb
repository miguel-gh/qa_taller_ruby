# Loops: Ejemplo 3
require 'benchmark'

contador = 0
max = 10000000

measurement = Benchmark.measure do
	
	while contador <= max
		puts contador
		contador = contador + 1
	end

end

puts measurement
