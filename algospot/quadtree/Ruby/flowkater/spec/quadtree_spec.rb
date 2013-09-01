require 'spec_helper'
require 'quadtree'

describe "Quadtree" do
	let(:q) {Quadtree.new}

	describe "Test Case" do
		it "flip" do
			q.flip("w").should == "w"
			q.flip("xwwbb").should == "xbbww"
			q.flip("xbwxwbbwb").should == "xxbwwbbbw"
			q.flip("xxbwwbbbw").should == "xbwxwbbwb"
			q.flip("xxwwwbxwxwbbbwwxxxwwbbbwwwwbb").should == "xxwbxwwxbbwwbwbxwbwwxwwwxbbwb"
		end

		it "flip recursive" do
			q.flip_recursive("w").should == "w"
			q.flip_recursive("xwwbb").should == "xbbww"
			q.flip_recursive("xbwxwbbwb").should == "xxbwwbbbw"
			q.flip_recursive("xxwwwbxwxwbbbwwxxxwwbbbwwwwbb").should == "xxwbxwwxbbwwbwbxwbwwxwwwxbbwb"
		end

		it "last x index" do
			q.last_x_index("w".split("")).should == -1
			q.last_x_index("xwwbb".split("")).should == 0
			q.last_x_index("xxwwbbwwb".split("")).should == 1
			q.last_x_index("xxwwbbxwwb".split("")).should == 6
			q.last_x_index("xxwwbbxwwbxx".split("")).should == 11
		end

		it "swap" do
			q.swap(["x","w","w","b","b"]).should == ["x","b","b","w","w"]
		end
	end
end