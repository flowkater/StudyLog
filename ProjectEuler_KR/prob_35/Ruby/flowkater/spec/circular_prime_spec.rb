require 'spec_helper'
require 'circular_prime'

describe "Circular Prime" do
	let(:cp){CircularPrime.new}

	describe "question test" do
		it "is prime" do
			cp.is_prime?(3).should == true
			cp.is_prime?(4).should == false
			cp.is_prime?(17).should == true
			cp.is_prime?(197).should == true
			cp.is_prime?(971).should == true
			cp.is_prime?(719).should == true
		end

		it "circular_numbers" do
			cp.circular_numbers(197).should == [971, 719, 197]
		end
		
		it "is_circular_prime" do
			cp.is_circular_prime(197).should == true
			cp.is_circular_prime(3).should == true
		end

		it "range check" do
			cp.is_circular_prime_in_range(100).should == 13
			# cp.is_circular_prime_in_range(1000).should == [2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, 97, 113, 131, 197, 199, 311, 337, 373, 719, 733, 919, 971, 991]
			cp.is_circular_prime_in_range(1000000).should == 55
		end

		it "eratos primes" do
			# cp.erathos_primes(1000000).should == []
		end
	end
end