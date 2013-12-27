require 'spec_helper'
require 'bit_palindrome'

describe "BitPalindrome" do
	let(:p){BitPalindrome.new}

	describe "problem example" do
		# it "bit convert" do
		# 	p.bit_convert(585).should == "1001001001"
		# 	p.bit_convert(2).should == "10"
		# end

		# it "is palindrome?" do
		# 	p.is_palindrome?(585).should == true
		# end
	end

	describe "under 1000000" do
		it "sum" do
			p.under_sum.should == 872187
		end
	end
end