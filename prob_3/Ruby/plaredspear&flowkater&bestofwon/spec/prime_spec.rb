require 'prime'
require 'spec_helper'

describe "Prime" do
	let(:prime){Prime.new}
	describe "is_prime?" do
		it "true" do
			prime.is_prime(2).should == true
			prime.is_prime(3).should == true
			prime.is_prime(5).should == true
			prime.is_prime(7).should == true
			prime.is_prime(11).should == true
		end

		it "false" do
			prime.is_prime(9).should == false
			prime.is_prime(13195).should == false
		end
	end
	describe "find_prime" do
		it "return 5, 7, 13, 29" do
			prime.find_prime(13195).should == [5, 7, 13, 29]
			prime.find_prime(600851475143).should == [71, 839, 1471, 6857]
		end
	end

	describe "fast_find_prime" do
		it "recursive function" do
			prime.fast_find_prime(4).should == [2]
			prime.fast_find_prime(5).should == [5]
			prime.fast_find_prime(13195).should == [5, 7, 13, 29]
			prime.fast_find_prime(600851475143).should == [71, 839, 1471, 6857]
		end
	end

end