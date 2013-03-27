require 'spec_helper'
require 'prob8'

describe "Prob8" do
	let(:prob8){Prob8.new}

	describe "check_size" do
		it "to_s check_size" do
			prob8.check_size.should == 1000
		end

		it "five_divide" do
			prob8.five_divide("1234567890").should == ["12345", "23456", "34567", "45678", "56789", "67890"]
		end

		it "five_divide_multiple" do
			# prob8.five_divide_multiple("1234567890").should == 15120
			# prob8.five_divide_multiple.last.should == 0
			# prob8.five_divide_multiple.first.should == 882
			prob8.five_divide_multiple.should == 40824
		end
	end
end