require 'prime'
require 'spec_helper'

describe "Prime" do
	let(:prime){Prime.new}
	describe "test" do
		it "test" do
			prime.test.should == nil
		end
	end
end