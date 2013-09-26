require 'spec_helper'
require 'english'

describe "English" do
	let(:eng){English.new}

	describe "problem test" do
		it "one to five" do
			eng.convert(1).should == "one"
			eng.convert(2).should == "two"
			eng.convert(3).should == "three"
			eng.convert(4).should == "four"
			eng.convert(5).should == "five"

			eng.count(1).should == 3
			eng.count(2).should == 3
			eng.count(3).should == 5
			eng.count(4).should == 4
			eng.count(5).should == 4

			eng.tonum(5).should == 19
		end

		it "twenty larger convert" do
			eng.convert(20).should == "twenty"
			eng.convert(21).should == "twenty-one"
			eng.convert(99).should == "ninety-nine"
			eng.convert(100).should == "one hundred"
			eng.convert(999).should == "nine hundred and ninety-nine"
			eng.convert(1000).should == "one thousand"
			eng.convert(342).should == "three hundred and forty-two"
			eng.convert(115).should == "one hundred and fifteen"

			eng.count(342).should == 23
			eng.count(115).should == 20
		end

		it "number result" do
			eng.tonum(20).should == 112
			eng.tonum(1000).should == 21124
		end
	end
end