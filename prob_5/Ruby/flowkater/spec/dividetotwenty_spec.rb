require 'spec_helper'
require 'dividetotwenty'

describe "Dividetotwenty" do
	let(:divide) {Dividetotwenty.new}

	describe "divide_to_ten" do
		it "get 2520" do
			divide.divide_to_ten.should == 2520
		end
	end
end