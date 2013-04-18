require 'hailstone'
require 'spec_helper'

describe "Hailstone" do
	let(:hail){Hailstone.new}

	describe "hail method" do
		it "count_check" do
			# hail.count_check(13).should == 10
		end

		it "max_count" do
			# hail.max_count(1_000_000).should == 837799
		end

		it "recur_memo" do
			# hail.recur_memo(13).should == 10
			# hail.recur_memo(22).should == 16
			# hail.recur_memo(100).should == 26
			# hail.recur_memo(97).should == 119
			# hail.recur_memo(871).should == 179
			# hail.recur_memo(1688).should == 43
			# hail.recur_memo.should == 837799
		end

		it "iterate_recur_memo" do
			# hail.iterate_recur_memo(100).should == 97
			# hail.iterate_recur_memo(1000).should == 871
			hail.iterate_recur_memo(1_000_000).should == 837799
		end
	end
end