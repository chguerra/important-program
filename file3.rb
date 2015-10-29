require 'pry'

class DataStructure

	def self.data_array
		arr = [
			[1,2,3,4,5,{:secret => {:unlock => ["res1","res1","res2"]}}],
			[1,2,3,4,5,{:secret => {:unlock => ["res2","res1","res2"]}}],
			[1,2,3,4,5,{:secret => {:unlock => ["res3","res1","res2"]}}],
			[1,2,3,4,5,{:secret => {:unlock => ["res4","res1","res2"]}}],
			[1,2,3,4,5,{:secret => {:unlock => ["res5","res1","res2"]}}]
		]
		return arr
	end
		
	end
da = DataStructure.data_array
binding.pry