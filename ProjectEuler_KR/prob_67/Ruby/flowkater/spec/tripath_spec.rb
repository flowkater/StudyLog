require 'spec_helper'
require 'tripath'

describe "Tripath" do
	let(:tri){Tripath.new("triangle.txt")}

	describe "just sovle" do
		it "test" do
			tri.memo[[0,0]].should == 59
			# tri.recur_pic.should == 0
		end
	end

	describe "memoization sovle" do
		it "memo" do
			tri.recur_memo_pic.should == 7273
		end
	end
end