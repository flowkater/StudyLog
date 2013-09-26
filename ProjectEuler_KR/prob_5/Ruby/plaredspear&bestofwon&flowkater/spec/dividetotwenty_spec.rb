require 'spec_helper'
require 'dividetotwenty'

describe "Dividetotwenty" do
	let(:divide) {Dividetotwenty.new}

	describe "prime_arr" do
		it "get 2520" do
			# divide.divide_to_ten.should == 2520
		end

		it "1toN" do
			divide.prime_arr(3).should == [2,3]
			divide.prime_arr(10).should == [2,3,5,7]
			divide.prime_arr(20).should == [2, 3, 5, 7, 11, 13, 17, 19]
		end
	end

	describe "divide_to_ten" do
		it "divide_by_prime" do
			divide.divide_to_ten(3).should == 6
			divide.divide_to_ten(10).should == 2520
			# divide.divide_to_ten(20).should == 2520
		end
	end


	describe "is_prime?" do

		it "true" do
			divide.is_prime?(2).should == true
			divide.is_prime?(3).should == true
			divide.is_prime?(5).should == true
			divide.is_prime?(7).should == true
		end

		it "false" do
			divide.is_prime?(4).should == false
			divide.is_prime?(6).should == false
		end

	end


end