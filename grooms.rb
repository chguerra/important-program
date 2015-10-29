class Room
	@@binary_map = [
			line1 = [1,1,0,0,0],
			line2 = [0,1,0,0,0],
			line2 = [0,1,1,0,0],
			line3 = [0,0,1,1,2]
		]

	def initialize(coordinate1,coordinate2)
		@coordinate = [coordinate1,coordinate2]
		@treasure = treasure
		@north = north
		@east = east
		@south = east
		@west = west
	end
	def check_surroundings
		if binary_map[coordinate1-1,corrdinate2] == nil || binary_map[coordinate1-1,corrdinate2] == 0
			@north = false
			else
			@north = true
		end
		if binary_map[coordinate1,corrdinate2-1] == nil || binary_map[coordinate1,corrdinate2-1] == 0
			@west = false
			else
			@west = true
		end
		if binary_map[coordinate1+1,corrdinate2] == nil || binary_map[coordinate1+1,corrdinate2] == 0
			@south = false
			else
			@south = true
		end
		if binary_map[coordinate1,corrdinate2+1] == nil || binary_map[coordinate1,corrdinate2+1] == 0
			@east = false
			else
			@east = true
		end
	end
end

class Door
	def initialize(origin,destiny,message)
		@origin = []
		@destiny = []
		@message = message
	end
end

def navigate_to(coordinate1,coordinate2)
	room = Room.new([coordinate1,coordinate2])
	room.check_surroundings
end



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