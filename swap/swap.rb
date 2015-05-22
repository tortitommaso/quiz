module Swap
	def swap(x,y)
		x = x-y
    	y = x+y
    	x = y-x
		[x,y]
	end
end