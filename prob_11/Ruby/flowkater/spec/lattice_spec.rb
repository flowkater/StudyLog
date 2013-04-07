require 'lattice'
require 'spec_helper'

describe "Lattice" do
	let(:lat){Lattice.new}

	describe "four_multiply" do

		it "input_test" do
			# lat.input_test("08 02 22 97 38 15 00 40 00 75 04 05 07 78 52 12 50 77 91 08").should == 20
			# lat.input_test("08 02 22 97 38 15 00 40 00 75 04 05 07 78 52 12 50 77 91 08").should == [8, 2, 22, 97, 38, 15, 0, 40, 0, 75, 4, 5, 7, 78, 52, 12, 50, 77, 91, 8]
		end

		it "j_plus_max" do
			# lat.j_plus.should == 34144 # first index arr[0].inject(:*)
			# lat.j_plus_max.should == 48477312
		end

		it "i_plus_max" do
			# lat.i_plus.should == 1651104 # first index
			# lat.i_plus_max.should == 51267216
		end

		it "i_j_plus_max" do
			# lat.i_j_plus_max.should == 40304286
		end

		it "i_j_minus_max" do
			# lat.i_j_minus_max.should == 238576
			# lat.i_j_minus_max.should == 70600674
		end

		it "all_max" do
			lat.all_max.should == 70600674
		end
	end
end