require 'spec_helper'
require 'prob_10'



describe "prob_10" do
  let(:prob) { Prob_10.new }

  describe "prime?" do
    it "true" do
      prob.is_prime?(7).should == true
    end
  end

  describe "method" do
    it "value" do
      prob.method.should == 142913828922
    end
  end
end