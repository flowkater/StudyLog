require 'fibo'
require 'spec_helper'

describe "Fibo" do
	let(:fibo){Fibo.new}

	describe "Fibo test" do
		it "f numer" do
			fibo.f_memo(1).should == 1
			fibo.f_memo(2).should == 1
			fibo.f_memo(6).should == 8
			fibo.f_memo(12).should == 144
			fibo.f_memo(15).should == 610
			fibo.f_memo(16).should == 987
			fibo.f_memo(17).should == 1597
			fibo.f_memo(30).should == 832040
		end

		it "digit larger than n" do
			# fibo.digit_first(10000).should == 17
			fibo.digit_first(1000).should == 4782
			# fibo.digit_first(100).should == 12
		end
	end
end