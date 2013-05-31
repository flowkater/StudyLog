require 'spec_helper'
require 'tripath'

describe "Tripath" do
	let(:tri_test){Tripath.new("prob_test.txt")}
	let(:tri){Tripath.new("prob.txt")}

	describe "problem test" do
		
		it "four triangle" do
			tri_test.step_check.should == [3,7,4,9]
			tri_test.step_sum.should == 23
		end
	end

	describe "problem" do
		it "problem solve" do
			tri.step_check.should == [75, 95, 47, 87, 82, 75, 73, 28, 83, 47, 43, 73, 91, 67, 98]
			tri.step_sum.should == 0
		end
	end
end