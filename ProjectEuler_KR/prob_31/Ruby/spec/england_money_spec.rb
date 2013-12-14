require 'spec_helper'
require 'england_money'

# 하나 이상만 사용하면 된다.
# 예를들어 1을 200개 쓰는 방법
# 1 * 200
# 1 다음 최소단위가 2이니까 1*198 + 2, 1*196 + 2*2
# 그 다음은 차가 5 이상이니까 1*195 + 5	 
# 1*194 + 2*3 193 + 2 + 5
# 여러개의 중첩된 for 문을 재귀적으로 바꿔보자.

describe "EnglandMoney" do
	let(:eng){EnglandMoney.new}

	describe "pound" do
		it "two pound" do
			eng.test_value.should == 200	
		end

		it "just loop" do
			eng.just_all_loop.should == 2
		end
	end
end