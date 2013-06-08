require 'large'
require 'spec_helper'

describe "Large" do
	let(:lar){Large.new}

	describe "larger number test" do
		it "divisor sum" do
			lar.divisor_sum(12).should == 16
			lar.divisor_sum(4).should == 3
			lar.divisor_sum(1000).should == 1340
		end

		it "larger number" do
			lar.larger_number(12).should == true
			lar.larger_number(18).should == true
			lar.larger_number(19).should == false
			# lar.larger_numbers(28123).should == []
		end

		it "large_number_sum" do
			lar.large_number_sum(10).should == 55
			lar.large_number_sum(12).should == 78
			lar.large_number_sum(28123).should == 78
		end

		# it "sum check" do
			# lar.sum_check(24).should == true
			# lar.sum_check(28125).should == true
			# lar.sum_check(99).should == false
			# lar.sum_large_arr(28123).should == false
			# lar.sum_large_arr(100).should == false
		# end
	end
end
