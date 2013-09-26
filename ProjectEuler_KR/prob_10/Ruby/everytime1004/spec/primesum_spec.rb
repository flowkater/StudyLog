require 'spec_helper'
require 'primesum'

describe "primesum" do
  let(:prim) { Primesum.new }

  describe 'is_prime?' do
  	it "is_prime?" do
  		prim.is_prime?(5).should == true
      prim.is_prime?(10).should == false
  	end
  end

  describe 'prime_sum' do
    it "prime_sum" do
      prim.prime_sum(10).should == 17
      prim.prime_sum(11).should == 28
      prim.prime_sum(2000000).should == 142913828922
      # 142913828922
    end
  end

end