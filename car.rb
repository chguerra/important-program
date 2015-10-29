class Engine
	def initialize(engine_noise)
		@engine_noise = engine_noise
	end

	def make_engine_noise
		puts @engine_noise
	end
end

class ElectricEngine < Engine
	def initialize(engine_noise, power_source)
		super(engine_noise)
		@power_source = power_source
	end
end

class Car
	def initialize(noise,engine)
		@noise = noise
		@engine = engine
	end
	def make_noise
		puts @noise
		@engine.make_engine_noise
	end
end

c = Car.new("brooom", ElectricEngine.new("pssssss","Electricity"))
c.make_noise