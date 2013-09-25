require 'spec_helper'
require 'combination'

describe "Combination" do
	let(:com){Combination.new}

	describe "5 under test" do
		it "square test" do
			com.square(2,2).should == 4
			com.square(4,3).should == 64
			com.square(5,5).should == 3125
			com.square(4,5).should == 1024
		end

		it "all square" do
			com.all_square(2).should == [4]
			com.all_square(3).should == [4,8,9,27]
			com.all_square(5).should == [4,  8,  9,  16,  25,  27,  32,  64,  81,  125,  243,  256,  625,  1024,  3125]
			# com.all_square(100).should == []
		end

		it "all square count" do
			com.all_square_count(5).should == 15
			com.all_square_count(3).should == 4
			com.all_square_count(100).should == 9183
		end
	end
end