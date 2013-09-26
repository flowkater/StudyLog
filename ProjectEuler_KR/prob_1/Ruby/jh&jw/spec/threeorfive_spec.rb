require 'threeorfive'
require 'spec_helper'

describe "Threeorfive" do
	let(:threeorfive){Threeorfive.new}

	describe "in 10" do
		it "should return 23" do
			threeorfive.three_or_five(10).should == 23
		end
	end

	describe "in 1000" do
		it "should return ?" do
			threeorfive.three_or_five(1000).should == 233168
		end
	end
end