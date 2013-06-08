require 'amicable_number'
require 'spec_helper'

describe "AmicableNumber" do
	let(:ami){AmicableNumber.new}

	describe "prob test" do
		it "divisor" do
			ami.divisor(220).should == 284
			ami.divisor(284).should == 220
		end
		
		it "amicable check" do
			ami.check(220,284).should == true
			ami.self_check(220).should == true
		end
	end

	describe "problem less than 10000" do
		it "range check" do
			ami.range_amicable_sum(10000).should == 31626
		end
	end
end