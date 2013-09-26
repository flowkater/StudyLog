require 'tenth'
require 'spec_helper'

describe "Tenth" do
	let(:tenth){Tenth.new}
	describe "tenth method" do
		it "length" do
			tenth.count_test.should == 100
		end

		it "nine_check" do
			# tenth.nine_check.should == 9
		end

		it "all_sum_divideten" do
			tenth.all_sum_divideten.should == "5537376230"
		end
	end
end