require 'sunday'
require 'spec_helper'

describe "Sunday" do
	let(:sun){Sunday.new}

	describe "day of week" do
		it "init" do
			sun.week.length.should == 7
			sun.month_day.length.should == 12
		end

		# it "today" do
		# 	sun.today.should == "tues"
		# end

		it "sunday_count" do
			sun.sunday_count(1900,1).should == [2,366]
		end

		it "century_sunday_count" do
			sun.century_sunday_count.should == 171
		end

		it "moon_year" do
			sun.moon_year(1900).should == false
			sun.moon_year(1904).should == true
			sun.moon_year(1908).should == true
			sun.moon_year(2000).should == true
		end
	end
end