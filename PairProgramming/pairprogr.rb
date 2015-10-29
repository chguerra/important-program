require 'pry'
require 'time'
class Subtitle
    def initialize(file)
        @file = IO.read (file)
        @subs = []
        @times = []
    end

    def get_subs
        @file.each_line do |line|
            @subs << line.gsub("\n",'').gsub("\r",'')
        end
    end

	def get_time
		@subs.each_with_index do |element, index|
			if element.include? " --> "
				time_to_edit = element.split(" --> ")
				time_to_edit.each! do |time_string|
				t = DateTime.parse(time_string)
				t = t + time_variation
				end
				end
			end
		puts @times
	end
end

s = Subtitle.new('sub.srt')
s.get_subs
s.get_time
	