class User
	def initialize
		@username = "admin"
		@password = "1234"
	end
end

def type_text
	puts "Login succesfull. Please type your text here:"
	phrase = gets.chomp
	q = phrase.split(" ")
	puts q.length
end

class LoginChecker
	def initialize(user, input)
		@user = user
		@input = input
	end
	def validate_login_info(user, input)
		if @user.password == @input
			return true
		else
			return false
		end
	end
	def start_login(user)
		puts "Type your username:"
		name = gets.chomp
		puts "Type your password:"
		password = gets.chomp
		if validate_login_info(@user, password) == true
			type_text
		else
			puts "Login failed try again"
			start_login
		end
	end
end

u = User.new
LoginChecker.new.start_login(u)