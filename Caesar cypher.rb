#Carlos Guerra Rodriguez
def solve_cipher(input, desviacion)
#Inicio un array con los caracteres del alfabeto ingles
alphabet = ("a".."z").to_a
	#Divido el string de entrada en caracteres individuales (opcional añadir metodo para aceptar solo letras como el ejercicio word sorting)
	resultado = input.split(//)

	resultado.each do |letra|
		#Si es un espacio no entra en el if
		if letra == " "
			print " "
		#Este else transforma primero cada caracter del string en su version en minusculas (downcase) y despues lo convierte en su valor numerico con el metodo ord
		#Los valores numericos de van del 97 al 123 por lo que lo primero es restarle esa cantidad para que coincidan con el indice del string alphabet
		#El Elsif y el Else identifican aquellos caracteres que al establecer una desviacion x se van por debajo o por encima del indice de alphabet y los corrige
		#Para hacer esto mas eficiente se puede usar solo una expresion print al final con 3 ifs independientes
		else
	 	indice = letra.downcase.ord - 97 - desviacion
	 		if indice >= 0 && indice <= 25
	 			print "#{alphabet[indice]}"
	 		elsif indice < 0
	 			indice = indice + 26
	 			print "#{alphabet[indice]}"
	 		else
	 			indice = indice - 26
	 			print "#{alphabet[indice]}"
	 		end

	 	end
	end
end
puts "Introduce frase a descrifrar"
frase = gets.chomp
puts "Introduce el parametro de desviacion"
num = gets.to_i
solve_cipher(frase, num)