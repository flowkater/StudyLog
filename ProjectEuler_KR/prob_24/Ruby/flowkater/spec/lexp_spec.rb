require 'lexp'
require 'spec_helper'

describe "Lexp" do
	let(:lexp){Lexp.new}

	describe "lex_test" do
		it "lex_test 012" do
			lexp.test(["0","1","2"]).should == ["012","021","102","120","201","210"]
			lexp.permutation_test([0,1,2]).should == [[0, 1, 2], [0, 2, 1], [1, 0, 2], [1, 2, 0], [2, 0, 1], [2, 1, 0]]
			# lexp.permutator([0,1,2,3]).should == [[0, 1, 2, 3], [0, 1, 3, 2], [0, 2, 1, 3], [0, 2, 3, 1], [0, 3, 1, 2], [0, 3, 2, 1], [1, 0, 2, 3], [1, 0, 3, 2], [1, 2, 0, 3], [1, 2, 3, 0], [1, 3, 0, 2], [1, 3, 2, 0], [2, 0, 1, 3], [2, 0, 3, 1], [2, 1, 0, 3], [2, 1, 3, 0], [2, 3, 0, 1], [2, 3, 1, 0], [3, 0, 1, 2], [3, 0, 2, 1], [3, 1, 0, 2], [3, 1, 2, 0], [3, 2, 0, 1], [3, 2, 1, 0]]
		end
	end

	describe "recursive" do
		it "permutator" do
			lexp.permutator([0]).should == [0]
			lexp.permutator([0,1]).should == [[0,1],[1,0]]
			lexp.permutator([0,1,2]).should == [[0, 1, 2], [0, 2, 1], [1, 0, 2], [1, 2, 0], [2, 0, 1], [2, 1, 0]]
			lexp.permutator([0,1,2,3]).should == [[0, 1, 2, 3], [0, 1, 3, 2], [0, 2, 1, 3], [0, 2, 3, 1], [0, 3, 1, 2], [0, 3, 2, 1], [1, 0, 2, 3], [1, 0, 3, 2], [1, 2, 0, 3], [1, 2, 3, 0], [1, 3, 0, 2], [1, 3, 2, 0], [2, 0, 1, 3], [2, 0, 3, 1], [2, 1, 0, 3], [2, 1, 3, 0], [2, 3, 0, 1], [2, 3, 1, 0], [3, 0, 1, 2], [3, 0, 2, 1], [3, 1, 0, 2], [3, 1, 2, 0], [3, 2, 0, 1], [3, 2, 1, 0]]
			# lexp.permutator([0,1,2,3,4,5,6,7,8,9]).should == []
		end

		it "permutation find index" do
			lexp.permutator_find_index([0,1], 1).should == [0,1]
			lexp.permutator_find_index([0,1], 2).should == [1,0]
			lexp.permutator_find_index([0,1,2], 2).should == [0,2,1]
			lexp.permutator_find_index([0,1,2,3,4,5,6,7,8,9], 1000000).should == [2, 7, 8, 3, 9, 1, 5, 4, 6, 0]
		end
	end
end