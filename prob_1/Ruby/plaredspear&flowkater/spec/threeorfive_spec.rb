require 'threeorfive'
require 'spec_helper'

describe "Threeorfive" do
	let(:threeorfive){Threeorfive.new}

	describe "less_method" do
		it "ten_less" do
			threeorfive.ten_less.should == 233168
		end

		it "thousand_less" do
			# threeorfive.thousand_less.should == 1000
		end
	end
end