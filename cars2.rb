class Audi
	def initialize(wheels, noise)
		@wheels = wheels
		@noise = noise
	end
	def make_noise
		puts @noise
	end
	def show_wheels
		puts @wheels
	end
end

class Bus
	def initialize(wheels, noise, seats)
		@wheels = wheels
		@noise = noise
		@seats = seats
	end
	def make_noise
		puts @noise
	end
	def show_wheels
		puts @wheels
	end
end

class SpongeBob
	def initialize(wheels,noise,color)
		@wheels = wheels
		@noise = noise
		@color = color
	end
	def make_noise
		puts @noise
	end
	def show_wheels
		puts @wheels
	end
end

subjects = [Audi.new(4,"brroooom"), Bus.new(8,"BOBOBOBOOB",45), SpongeBob.new(1,"who lives in a pineapple under the sea?","yellow")]

subjects.each do |subject|
	puts subject.make_noise
	puts subject.show_wheels
end
