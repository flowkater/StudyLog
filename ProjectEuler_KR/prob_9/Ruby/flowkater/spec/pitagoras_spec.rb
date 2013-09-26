require 'pitagoras'
require 'spec_helper'

describe "Pitagoras" do
	let(:pita){Pitagoras.new}

	describe "pitagoras_" do
		it "check" do
			pita.check(3,4,5).should == true
		end

		# it "sum" do
			# pita.sum(3,4,5).should == 12
		# end

		it "sum_check" do
			pita.sum_check(3,4,5).should == 12
			pita.sum_check(1,2,2).should == nil
		end

		# it "divisor_test" do
			# pita.divisor_test.should == [200,375,425]
		# end

		it "sum_check_arr" do
			# pita.sum_check_arr.should == [12, 30, 24, 56, 40, 36, 90, 60, 132, 48, 84, 182, 112, 80, 144, 72, 180, 70, 120, 168, 96, 150, 108, 126, 224, 160, 154, 210, 198, 156, 208, 140, 200, 176, 192, 204, 216, 228, 240, 234]
			# pita.sum_check_arr(12).should == [3,4,5]
			# pita.sum_check_arr(234).should == [65,72,97]
			# pita.sum_check_arr(1000).should == [200,375,425]
			pita.sum_check_arr(1000).should == [200.0, 375.0, 425.0]
		end

		it "multiply" do
			pita.multiply(1000).should == 31875000
		end

		it "divisor" do
			pita.divisor(1000,40).should == 25
		end

		it	"reverse_sum" do
			# pita.reverse_sum(12).should == [3,4,5]
		end
	end
end