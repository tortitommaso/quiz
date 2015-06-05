require_relative '../sequence_sum'

describe SequenceSum do

 it "case 1" do
 	expect(SequenceSum.new.max_sum([2, 3, -8, -1, 2, 4, -2, 3])).to be 7
 	expect(SequenceSum.new.max_sum([2, -1, 3, -10, 6])).to be 6
 	expect(SequenceSum.new.max_sum([2, -1, 3, -10, 2])).to be 4
 end


end