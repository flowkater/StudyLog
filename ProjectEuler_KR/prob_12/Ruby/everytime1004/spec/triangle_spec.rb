require 'spec_helper'
require 'triangle'

describe "Triangle" do
	let(:tri){Triangle.new}

	describe "get_triangle_num" do
		it "get_one_triangle_num" do
			tri.get_triangle(1).should == 1
			tri.get_triangle(2).should == 3
			tri.get_triangle(3).should == 6
		end
	end

	describe "get_triangle_num_divisor" do
		it "get_divisor" do
			tri.get_divisor_num(76576500).should == 576
			tri.get_divisor_num(3).should == 2
			tri.get_divisor_num(6).should == 4
			tri.get_divisor_num(10).should == 4
		end
	end

	describe "get_divisor_500" do
		it "Get 500!!" do
			tri.get_divisor_500().should == 76576500
		end
	end

end
