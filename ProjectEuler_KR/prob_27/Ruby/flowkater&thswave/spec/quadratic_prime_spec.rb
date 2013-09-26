require 'quadratic_prime'
require 'spec_helper'

describe "Quadratic Prime" do
	let(:quad){QuadraticPrime.new}

	describe "I love you Euler" do
		it "quadratic_prime_of_euler" do
			quad.prime_of_euler(0).should == 41
			quad.prime_of_euler(1).should == 43
			quad.prime_of_euler(38).should == 1523
		end

		it "is_prime?" do
			quad.is_prime?(3).should == true
			quad.is_prime?(4).should == false
			quad.is_prime?(5).should == true
			quad.is_prime?(30).should == false
			quad.is_prime?(1523).should == true
			quad.is_prime?(-1523).should == true
			quad.is_prime?(43).should == true
			quad.is_prime?(41).should == true
		end

		it "euler real prime?" do
			quad.euler_real_prime?(0).should == true
			quad.euler_real_prime?(38).should == true
		end

		it "euler range prime?" do
			quad.euler_range_prime?(0).should == true
			quad.euler_range_prime?(40).should == false
			quad.euler_range_prime?(39).should == true
			quad.euler_range_prime?(41).should == false
		end
	end

	describe "computer quadratic prime" do
		it "quadratic prime of computer" do
			quad.prime_of_computer(0).should == 1601
			quad.prime_of_computer(1).should == 1523
		end 

		it "prime test" do
			quad.computer_prime_test(79).should == true
			quad.computer_prime_test(70).should == true
			quad.computer_prime_test(80).should == false
			quad.computer_prime_test(81).should == false
		end
	end

	describe "quadratic prime test" do
		it "count of quadratic prime" do
			quad.prime_count_of_quadratic(1, 41).should == 40
			quad.prime_count_of_quadratic(-79, 1601).should == 80
			quad.prime_count_of_quadratic(-999, -999).should == 0
			quad.prime_count_of_quadratic(999, 999).should == 0
			quad.prime_count_of_quadratic(-61, 971).should == 71
		end

		it "range 999 test" do
			# quad.max_prime_count.should == 0
		end

		it "multiply a b" do
			quad.max_multiply.should == -59231
		end
	end
end