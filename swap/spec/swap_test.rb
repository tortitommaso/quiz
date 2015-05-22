require_relative '../swap'
include Swap 

describe Swap do
 it "swap test" do
 	a = 1
 	b = 2
 	result = swap(a,b) 
 	expect(result[0]).to be 2
 	expect(result[1]).to be 1
 end

end