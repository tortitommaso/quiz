require_relative '../unique_char_in_string'

describe UniqueCharInString do

 it "verify unique char in a string" do
 	expect(UniqueCharInString.new.verify("abc")).to be true
 end

 it "verify duplicate char in a string" do
 	expect(UniqueCharInString.new.verify("aba")).to be false
 end


end