require_relative '../tictactoe'
require 'matrix'
include Players

describe Tictactoe do

 it "red wins / column case" do
 	m = Matrix[ [RED, EMPTY, EMPTY], [RED, EMPTY, BLUE], [RED, BLUE, BLUE] ]
 	t = Tictactoe.new(m)
 	expect(t.whoWins).to be(RED)
 end

 it "blue wins / row case" do
 	m = Matrix[ [EMPTY, EMPTY, EMPTY], [RED, EMPTY, RED], [BLUE, BLUE, BLUE] ]
 	t = Tictactoe.new(m)
  	expect(t.whoWins).to be(BLUE)
 end

  it "blue wins / diagonal case" do
 	m = Matrix[ [BLUE, EMPTY, RED], [RED, BLUE, RED], [EMPTY, EMPTY, BLUE] ]
 	t = Tictactoe.new(m)
 	expect(t.whoWins).to be(BLUE)
 end

  it "red wins / other diagonal case" do
 	m = Matrix[ [BLUE, EMPTY, RED], [EMPTY, RED, BLUE], [RED, EMPTY, BLUE] ]
 	t = Tictactoe.new(m)
 	expect(t.whoWins).to be(RED)
 end 

end