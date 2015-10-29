class Room
	def initialize(north,east,south,west,treasure,coordinate)
		@coordinate = [0,0]
		@treasure = treasure
		@north = []
		@east = []
		@south = []
		@west = []
	end
end

class Door
	def initialize(origin,destiny,message)
		@origin = []
		@destiny = []
		@message = message
	end
end

class Map
	def initialize
		binary_map = [
			line1 = [1,1,0,0,0],
			line2 = [0,1,0,0,0],
			line2 = [0,1,1,0,0],
			line3 = [0,0,1,1,2]
		]
	end
end

#def navigate_to(coordinate1,coordinate2)



def start_game
	puts "bienvenido al juego de la picocha"
	puts "escribe start para empezar"
	answer = gets.chomp
	if answer == "start"
		navigate_to(0,0)
	else
		puts "si fallas en esto..."
	end
end

start_game