require 'primesum'
require 'spec_helper'

describe "Primesum" do
	let(:primesum){Primesum.new}
	describe "primesum_" do
		it "lessthan_sum" do
			# primesum.lessthan_sum(10).should == 17
			# primesum.lessthan_sum(1000).should == 76127
			# primesum.lessthan_sum(10000).should == 5736396
			# primesum.lessthan_sum(2000000).should == 142913828922
		end

		it "is_prime" do
			# primesum.is_prime?(2).should == true
			# primesum.is_prime?(3).should == true
			# primesum.is_prime?(4).should == false
			# primesum.is_prime?(5).should == true
		end

		it "eratos_sum" do
			# primesum.sum_of_primes(10).should == 17
			# primesum.lessthan_sum(1000).should == 76127
			# primesum.sum_of_isprime(2000000).should == 142913828922
			primesum.sum_of_erathos(2000000).should == 142913828922
			# primesum.primes(2000000).should == 142913828922
		end
	end
end