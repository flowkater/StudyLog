# 2**15 = 32768 의 각 자리수를 더하면 3 + 2 + 7 + 6 + 8 = 26 입니다.
# 2**1000의 각 자리수를 모두 더하면 얼마입니까?

require 'digit'
require 'spec_helper'

describe 'Digit' do
	let(:dig){Digit.new}

	describe 'fifteen digit check' do
		it 'fifteen_check' do
			dig.fifteen_check.should == 26
		end

		it 'digit_sum' do
			dig.digit_sum(15).should == 26
			dig.digit_sum(100).should == 115
			dig.digit_sum(1000).should == 1366
		end
	end
end
