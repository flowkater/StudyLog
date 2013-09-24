require 'matrix_sum'
require 'spec_helper'


describe "Matrix Sum" do
	let(:mat){MatrixSum.new}

	describe "matrix algebra test" do
		it "angle" do
			mat.angle(5).should == [25, 21, 17, 13]
			mat.angle(7).should == [49, 43, 37, 31]
			mat.angle(1001).should == [1002001, 1001001, 1000001, 999001]
		end

		it "seq general" do
			mat.sum_general(1, 8).should == 0
			mat.sum_general(2, 8).should == 8
			mat.sum_general(3, 8).should == 24

			mat.seq_general(1, 8).should == 1
			mat.seq_general(2, 8).should == 9
			mat.seq_general(3, 8).should == 25
			mat.seq_general(4, 8).should == 49

			mat.seq_general(501, 8).should == 1002001
			mat.seq_general(501, 6).should == 1001001
			mat.seq_general(501, 4).should == 1000001
			mat.seq_general(501, 2).should == 999001
		end
		
		it "seq index" do
			mat.seq_index(49,8).should == 4
			mat.seq_index(25,8).should == 3
			mat.seq_index(1002001,8).should == 501
		end

		it "sum element matrix" do
			mat.sum_ele_matrix(3,8).should == 35
			mat.sum_ele_matrix(3,6).should == 29
			mat.sum_ele_matrix(3,4).should == 23
			mat.sum_ele_matrix(3,2).should == 17

			mat.sum_matrix(3).should == 101
			mat.sum_matrix(2).should == 25
			mat.sum_matrix(1).should == 1

			mat.sum_matrix(501).should == 669171001
		end
	end
end