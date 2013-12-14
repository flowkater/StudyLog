require 'self_factorial_sum'
require 'spec_helper'

describe "Self Factorial Sum" do
	let(:sf){SelfFactorialSum.new}

	describe "example test, Self Factorial Sum of 145 is 145" do
		it "is true" do
			sf.is_factorial_sum(145).should == true
		end

		it "factorial sum" do
			sf.factorial_sum(145).should == 145
		end

		it "factorial" do
			sf.factorial(0).should == 1
			sf.factorial(4).should == 24
			sf.factorial(5).should == 120
			sf.factorial(1).should == 1
		end
	end

	describe "solve process" do
		it "self digits" do
			sf.self_digits(145).should == 3 
			sf.self_digits(198).should == 6
			sf.self_digits(999).should == 7
		end

		it "is self digits" do
			sf.is_self_digits(145).should == true
			sf.is_self_digits(198).should == false
			sf.is_self_digits(999).should == false
		end

		it "is answers" do
			# sf.is_answers.should == [145, 40585]
			sf.is_answers.should == 40730
		end
	end
end