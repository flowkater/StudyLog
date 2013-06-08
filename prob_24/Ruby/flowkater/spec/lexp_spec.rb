require 'lexp'
require 'spec_helper'

describe "Lexp" do
	let(:lexp){Lexp.new}

	describe "lex_test" do
		it "lex_test 012" do
			lexp.test("012").should == ["012","021","102","120","201","210"]
		end
	end
end