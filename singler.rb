class User
	@@password = "1234"
	def initialize(user,password)
		@user = user
		@password = "1234"
	end

	def check_login(name,password)
		if password == @@password
			return true
		else
			return false
		end
	end

	def type_text
		puts "Login succesfull. Please type your text here:"
		phrase = gets.chomp
		q = phrase.split(" ")
		puts q.length
	end

	def start_login
		puts "Type your username:"
		name = gets.chomp
		puts "Type your password:"
		password = gets.chomp
		if check_login(name, password) == true
			type_text
		else
			puts "Login failed try again"
			start_login
		end
	end
end

u = User.new("admin","password")
u.start_login
