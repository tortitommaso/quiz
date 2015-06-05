class SequenceSum

	def max_sum array
		max = 0
		candidate = 0
		array.each_index do |i|
			candidate += array[i]
			if candidate > max 
				max = candidate
			elsif candidate < 0
				candidate = 0 
			end
		end
		max
	end
end