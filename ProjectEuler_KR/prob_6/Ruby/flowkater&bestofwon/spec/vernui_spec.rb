require 'spec_helper'
require 'vernui'

describe "Vernui" do
	let(:ver){Vernui.new}

	describe "square_of_sum" do
		it "10" do
			ver.square_of_sum(10).should == 3025
			ver.square_of_sum(100).should == 25502500

		end
	end

	describe "sum_of_squares" do
		it "10" do
			ver.sum_of_squares(10).should == 385
			ver.sum_of_squares(100).should == 338350
		end
	end

	describe "gap" do
		it "10" do
			ver.gap(10).should == 2640
			ver.gap(100).should == 25164150
		end
	end

end
