require 'spec_helper'
require 'palindrome'

describe "Palindrome" do
	let(:palind){Palindrome.new}

	describe "is_palindrome?" do
		it "true" do
			# palind.is_palindrome(9009).should == ["9", "0"]
			# palind.is_palindrome(9009).should == ["0", "9"]
			palind.is_palindrome(9009).should == true
		end

		it "false" do
			palind.is_palindrome(90099).should == false
		end
	end

	describe "mult" do
		it "check" do
			# palind.mult.should == 9009
			palind.mult.should == 906609
		end
	end

	# describe "lim" do
	# 	it "fast_check" do
	# 		# palind.mult.should == 9009
	# 		palind.lim.should == 906609
	# 	end
	# end
end