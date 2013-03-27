require 'spec_helper'
require 'tenthfprime'

describe "Tenthfprime" do
	let(:tenf){Tenthfprime.new}

	describe "is_prime?" do
		it "test" do
			tenf.is_prime?(2).should == true
			tenf.is_prime?(3).should == true
			tenf.is_prime?(4).should == false
			tenf.is_prime?(5).should == true
			tenf.is_prime?(6).should == false
		end
	end

	describe "order" do
		it "order test" do
			tenf.order(4).should == 7
			tenf.order(5).should == 11
			tenf.order(10).should == 29
			# tenf.order(10001).should == 104743
		end
	end

	describe "eratos" do
		it "array" do
			# tenf.eratos(10).should == [nil,nil,true, true,false,true,false,true,false,false,false]
			tenf.eratos(10001).should == 104743
		end
	end
end
