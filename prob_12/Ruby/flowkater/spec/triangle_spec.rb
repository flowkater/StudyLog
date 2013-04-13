require 'spec_helper'
require 'triangle'

describe "Triangle" do
	let(:tri){Triangle.new}

	describe "problem_test" do
		it "sum" do
			tri.sum(1).should == 1
			tri.sum(2).should == 3
			tri.sum(3).should == 6
			tri.sum(4).should == 10
			tri.sum(7).should == 28
		end

		it "divisor" do
			tri.divisor(1).should == [1]
			tri.divisor(3).should == [1,3]
			tri.divisor(6).should == [1,2,3,6]
			tri.divisor(10).should == [1,2,5,10]
			tri.divisor(15).should == [1,3,5,15]
			tri.divisor(21).should == [1,3,7,21]
			tri.divisor(28).should == [1,2,4,7,14,28]
		end

		it "divisor_size_check" do
			# tri.divisor_size_check(28,5).should == 5
			# tri.divisor_size_check(720,30).should == 30
			# tri.divisor_size_check(,500).should == 500
		end

		it "factorization" do
			tri.factorization(24).should == [2,2,2,3]
			tri.factorization(28).should == [2,2,7]
			tri.factorization(100).should == [2,2,5,5]
			tri.factorization(1000).should == [2,2,2,5,5,5]
			# tri.factorization(10000).should == [2,2,2,2,5,5,5,5]
			# tri.factorization(100000).should == [2,2,2,2,2,5,5,5,5,5]
			# tri.factorization(1000000).should == [2,2,2,2,2,2,5,5,5,5,5,5]
		end

		it "number_of_factor" do
			tri.number_of_factor(24).should == 8
			tri.number_of_factor(28).should == 6
			tri.number_of_factor(100).should == 9
			tri.number_of_factor(36).should == 9
		end

		it "no_division_factor" do
			tri.no_division_factor(24).should == 8
			tri.no_division_factor(28).should == 6
			# tri.no_division_factor(100).should == 9
			# tri.no_division_factor(36).should == 9
			tri.no_division_factor(120).should == 16
			
		end

		it "divisor_check_size" do
			# tri.divisor_check_size(1).should == 1
			# tri.divisor_check_size(2).should == 3
			# tri.divisor_check_size(4).should == 6
			# tri.divisor_check_size(5).should == 28
			# tri.divisor_check_size(30).should == 2016
		end

		it "greater than size" do
			tri.size(1).should == 1
			tri.size(28).should == 6
		end

		it "sqrt_bigger" do
			tri.sqrt_bigger(5).should == 28
			tri.sqrt_bigger(10).should == 120
		end

		it "is_greater_size?" do
			tri.is_greater_size?(5).should == 28
			tri.is_greater_size?(10).should == 120
			tri.is_greater_size?(30).should == 2016
			tri.is_greater_size?(500).should == 76576500
		end
	end
end
