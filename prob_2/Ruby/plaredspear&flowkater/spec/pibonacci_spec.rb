require 'pibonacci'
require 'spec_helper'

describe "Pibonacci" do
	let(:pibo){Pibonacci.new}

	describe "pibonacci_test" do
		it "pibo test" do
			# pibo.pibonacci_create.should == [1,2,3,5,8]
		end

		it "pibo even" do
			pibo.even_check_sum.should == 4613732
			# pibo.even_check.should == 10
		end
	end
end