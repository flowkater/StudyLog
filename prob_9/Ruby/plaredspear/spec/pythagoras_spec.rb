require 'spec_helper'
require 'pythagoras'

describe "pythagoras" do
  let(:pytha) { Pythagoras.new }

  # describe "check Pythagoras Number" do
  #   it "be true" do
  #     pytha.checkPythaNumber(3,4,5).should == true
  #   end
  # end

  # describe "check Integer" do
  #   it "be true" do
  #     pytha.checkInteger(1).should == true
  #   end

  #   it "be false" do
  #     pytha.checkInteger(1.1).should == false
  #   end
  # end

  describe "minimum pytha" do
    it "200, 375, 425" do
      pytha.pythaNumber.should == 31875000
    end
  end


end