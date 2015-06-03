class UniqueCharInString

	def initialize
		@char_map = {}
	end

	def verify string
		string.each_char {|c| 
			if @char_map.has_key? c
				return false
			else 
				@char_map[c] = true 
			end
		}
		true
	end
end