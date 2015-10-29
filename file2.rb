require 'pry'

class DataStructure

	def self.data_array
		arr = [
			["a","b","c"],
			[1,2,3],
			["pizza","asparagus","chicken wings"],
			["coffee","tea","cola"]
		]
		return arr
	end
		
	end
da = DataStructure.data_array
binding.pry

#Crear array complejo vacio
#t = Array.new(2){[nil]}
#t = Array.new(2){Array.new(3)}