require 'square_sum'
require 'spec_helper'

describe "Square Sum" do
	let(:sq){SquareSum.new}

	describe "4 square result" do
		it "4 square sum" do
			sq.sq_sum(1634).should == 1634
			sq.sq_sum(8208).should == 8208
			sq.sq_sum(9474).should == 9474
		end

		it "n square sum" do
			sq.sq_n_sum(1634,4).should == 1634
			sq.sq_n_sum(8208,4).should == 8208
			sq.sq_n_sum(9474,4).should == 9474

			sq.sq_n_sum(1634,5).should == 9044
			sq.sq_n_sum(8208,5).should == 65568
			sq.sq_n_sum(9474,5).should == 77904
		end

		it "check square sum" do
			sq.check_sq_sum(4).should == [1634,8208,9474]
			sq.check_sq_sum(5).should == [4150, 4151, 54748, 92727, 93084, 194979]
		end
	end
end