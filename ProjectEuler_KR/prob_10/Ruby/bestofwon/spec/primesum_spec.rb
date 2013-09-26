require 'primesum'
require 'spec_helper'


describe "Primesum"  do
	let(:psum) {Primesum.new}

	describe "find_prime" do
		it "find_primes_under" do
			# psum.find_primes_under(10).should==[2, 3, 5, 7]
			# #psum.find_primes_under(10).should==[2, 3, 5, 8]
			# psum.find_primes_under(2000000).should == []
			# psum.is_prime?(1903271)==true

			# eratos - delete 메서드 
			# psum.eratos(10).should==17
			# psum.eratos(2000000).should==0

			psum.eratos2(10).should==17
			psum.eratos2(2000000).should==142913828922
		end
	end
end
