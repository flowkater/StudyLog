require 'spec_helper'
require 'pythagoras'

describe "pythagoras" do
  let(:pyth) { Pythagoras.new }

  describe 'check_pythagoras' do
    it "check" do
      pyth.check_pythagoras(3, 4, 5).should == true 
      pyth.check_pythagoras(3, 4, 6).should == false 
    end
  end

  describe 'find_pythagoras' do
    it 'find' do
      pyth.find_pythagoras(12).should == [3, 4, 5]
      pyth.find_pythagoras(1000).should == [200, 375, 425]
    end
  end

  describe 'get_result' do
    it 'result' do
      pyth.result(1000).should == 31875000
    end
  end

end