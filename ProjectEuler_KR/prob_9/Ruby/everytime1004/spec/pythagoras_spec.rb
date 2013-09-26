require 'spec_helper'
require 'pythagoras'

describe "pythagoras" do
  let(:pytha) { Pythagoras.new }

  describe 'pythagoras?(12)' do
  	it "pythagoras 3 num" do
  		pytha.pythagoras?(12).should == [3, 4, 5]
  	end
  end

  describe 'pythagoras_sum(12)' do
  	it 'sum of 3 num' do
  		pytha.pythagoras_sum(12).should == 60
  	end
  end

  describe 'pythagoras_sum(1000)' do
  	it 'sum of 3 num' do
  		pytha.pythagoras_sum(1000).should == 31875000
  	end
  end
end