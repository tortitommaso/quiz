require 'matrix'

module Players
	RED = 'r' 
	BLUE = 'b'
	EMPTY = ''
end

class Tictactoe
	include Players

	def initialize matrix
		@matrix = matrix
	end

	def whoWins
		[RED, BLUE].each do |player|
			(0..2).each do |i|
				return player if @matrix.row(i).count(player) == 3 
				return player if @matrix.column(i).count(player) == 3 
			end
			return player if top_left_bottom_right_diagonal.count(player) == 3
			return player if bottom_left_top_right_diagonal.count(player) == 3
		end
	end

	def print 
		@matrix.to_a.each {|r| puts r.inspect}
	end

	private 

	def top_left_bottom_right_diagonal
		(0..2).collect {|i| @matrix.element(i,i)}
	end

	def bottom_left_top_right_diagonal
		(0..2).collect {|i| @matrix.element(2-i,i)}
	end
end