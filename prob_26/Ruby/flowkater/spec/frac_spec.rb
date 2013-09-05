require 'spec_helper'
require 'frac'

describe "Frac" do
	let(:frac){Frac.new}
	describe "frac test" do
		it "repeating decimal" do
			frac.divide(2).should == 0.5
			frac.divide(3).should == 0.3333333333333333
			frac.divide(4).should == 0.25
			frac.divide(5).should == 0.2
			frac.divide(6).should == 0.16666666666666666
			frac.divide(7).should == 0.14285714285714285
			frac.divide(8).should == 0.125
			frac.divide(9).should == 0.1111111111111111
			frac.divide(10).should == 0.1
		end

		it "gcd" do
			frac.gcd(120,50).should == 10
			frac.gcd(1804,328).should == 164
			frac.gcd(10,5).should == 5
			frac.gcd(10,7).should == 1
			frac.gcd(7,10).should == 1
		end

		it "pure unlimit decimal?" do
			frac.pure_unlimit_decimal?(3).should == true
			frac.pure_unlimit_decimal?(7).should == true
			frac.pure_unlimit_decimal?(9).should == true
			frac.pure_unlimit_decimal?(6).should == false
			frac.pure_unlimit_decimal?(2).should == false
			frac.pure_unlimit_decimal?(19).should == true
		end

		it "unpure unlimit decimal?" do
			frac.unpure_unlimit_decimal?(3).should == false
			frac.unpure_unlimit_decimal?(2).should == false
			frac.unpure_unlimit_decimal?(6).should == true
			frac.unpure_unlimit_decimal?(19).should == false
		end

		it "repeating decimal distance" do
			frac.repeating_decimal_distance(4).should == 0
			frac.repeating_decimal_distance(3).should == 1
			frac.repeating_decimal_distance(7).should == 6
			frac.repeating_decimal_distance(296).should == 3
			frac.repeating_decimal_distance(982).should == 490
			frac.repeating_decimal_distance(983).should == 982
		end

		it "get nine distance" do
			frac.nine_convert(3).should == 9
			frac.nine_convert(7).should == 999999
		end

		it "under 1000" do
			frac.longest_repeating_decimal_distance.should == 983
		end
	end
end