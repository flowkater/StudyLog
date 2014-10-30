require 'spec_helper'
require 'england_money'

describe "EnglandMoney" do
	let(:eng){EnglandMoney.new}

	describe "pound" do
		it "200 pound" do
			eng.england_money_count_dp.should == 73682
			eng.england_money_count.should == 73682
		end
	end
end