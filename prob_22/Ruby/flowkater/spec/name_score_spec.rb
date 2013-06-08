require 'name_score'
require 'spec_helper'

describe "NameScore" do
	let(:ns){NameScore.new}

	describe "file test" do
		it "file test" do
			ns.names[0].should == "AARON"
			ns.names[5162].should == "ZULMA"
			ns.names.length.should == 5163
		end

		it "name score" do
			ns.score["A"].should == 1
			ns.score["Z"].should == 26
			ns.name_score_sum("AARON",1).should == 49
			ns.names_sum.should == 871198282
		end
	end
end