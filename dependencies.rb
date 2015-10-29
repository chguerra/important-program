
module Clock
	def show_time
		puts Time.new
	end
end
		
module Camera
	def take_photo
		puts "Photo taken in #{@os}"
	end
end

class Device
	include Clock
	def initialize(os, screen_size)
		@os = os
		@screen_size = screen_size
	end
end

class Microwave
	include Clock
	def heat_food
		puts "I'm heating your omellete du fromage"
	end
end

class Agenda
	def initialize
		@agenda = {}
	end
	def add_contact(name, number)
		@agenda[name] = number
	end
	def search_contact(name)
		print "Contact #{name} phone number is: "
		puts @agenda[name]
	end
	def call_contact(name)
		print "Calling "
		puts @agenda[name]
	end
end

class Smartwatch < Device
	include Camera
	def initialize(os, screen_size)
		super(os, screen_size)
	end
	def show_time
		puts "****"+Time.new.to_s+"****"
	end
end

class Laptop < Device
	def initialize(os, screen_size, touchable)
		@touchable = touchable
		super(os, screen_size)
	end
end

class Phone < Device
	include Camera
	def initialize(os, screen_size, agenda)
		super(os, screen_size)
		@agenda = agenda
	end
	def add_contact(name, number)
		@agenda.add_contact(name,number)
	end
	def search_contact(name)
		@agenda.search_contact(name)
	end
	def call_contact(name)
		@agenda.call_contact(name)
	end
end	

a = Agenda.new
p = Phone.new("iOS",5,a)
p.add_contact("Charlie","655076413")
p.add_contact("Pepe","667461125")
p.search_contact("Charlie")
p.search_contact("Pepe")
m = Microwave.new
m.show_time
m.heat_food

devices = [Microwave.new, Smartwatch.new("clockOs",2), Laptop.new("macOs",15,true), Phone.new("iOS",5,Agenda.new)]

devices.each do |device|
	puts device.show_time
end