require 'spec_helper'
require 'prime'

describe "Prime" do
  let(:prime) { Prime.new }

  # describe "basic" do
  #   it "is_prime" do
  #     prime.is_prime?(3).should == true
  #   end
  # end

  describe "count" do
    it "count?" do
      # prime.count(2).should == 3
      # prime.count(3).should == 5
      # prime.count(4).should == 7
      prime.count(10001).should == 104743
    end

  end


end