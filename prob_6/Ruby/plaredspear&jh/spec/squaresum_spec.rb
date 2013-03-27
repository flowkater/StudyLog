require 'spec_helper'
require 'squaresum'

describe "SquareSum" do
  let(:squaresum) { SquareSum.new }

  describe "basic" do
    it "get 3025" do
      squaresum.test(10).should == 10
    end
  end

  describe "square" do
    it "get 385" do
      squaresum.each_value_square_sum(10).should == 385
    end
  end

  describe "sum_square" do
    it "get 36" do
      squaresum.sum_square(10).should == 3025
    end
  end

  describe "subject" do
    it "get 2640" do
      squaresum.subject(100).should == 25164150
    end
  end

  
end