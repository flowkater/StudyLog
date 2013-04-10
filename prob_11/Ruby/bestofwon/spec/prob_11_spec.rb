require 'spec_helper'
require 'prob_11'


describe "prob_11" do
  let(:prob) { Prob11.new }

  describe "multiply_4_adjacent_nums" do
		it "in_horizontal" do
			# prob.horizontal_array_check1.should == [50, 77, 91, 8]
			# prob.horizontal_array_check2.should == [89, 19, 67, 48]
			prob.horizontal_max.should == 48477312
		end
		
		it "in_vertical" do
			prob.vertical_max.should == 51267216 
		end

		it "in_diagonal" do
			prob.diagonal_left_max.should == 70600674
			prob.diagonal_right_max.should == 40304286
		end
	end

end