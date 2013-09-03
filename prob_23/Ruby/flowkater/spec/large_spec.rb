require 'large'
require 'spec_helper'

describe "Large" do
	let(:lar){Large.new}

	describe "problem example test" do
		# it "real divisor" do
		# 	lar.real_divisor(28).should == [1,2,4,7,14]
		# 	lar.real_divisor(12).should == [1,2,3,4,6]
		# 	lar.real_divisor(4).should == [1,2]
		# 	lar.real_divisor(2).should == [1]
		# end

		it "real divisor sum" do
			lar.real_divisor_sum(28).should == 28
			lar.real_divisor_sum(12).should > 12
			lar.real_divisor_sum(12).should == 16
			lar.real_divisor_sum(4).should == 3
			lar.real_divisor_sum(2).should == 1
		end

		it "Abundant number check" do
			lar.abundant_number(28).should == false
			lar.abundant_number(4).should == false
			lar.abundant_number(12).should == true
			lar.abundant_number(100).should == true
		end
	end
	
	describe "abundant number" do
		it "range check" do
			lar.abundant_number_array_to(100).should == [12, 18, 20, 24, 30, 36, 40, 42, 48, 54, 56, 60, 66, 70, 72, 78, 80, 84, 88, 90, 96, 100]
			lar.abundant_number_array_to(1000).should == [12, 18, 20, 24, 30, 36, 40, 42, 48, 54, 56, 60, 66, 70, 72, 78, 80, 84, 88, 90, 96, 100, 102, 104, 108, 112, 114, 120, 126, 132, 138, 140, 144, 150, 156, 160, 162, 168, 174, 176, 180, 186, 192, 196, 198, 200, 204, 208, 210, 216, 220, 222, 224, 228, 234, 240, 246, 252, 258, 260, 264, 270, 272, 276, 280, 282, 288, 294, 300, 304, 306, 308, 312, 318, 320, 324, 330, 336, 340, 342, 348, 350, 352, 354, 360, 364, 366, 368, 372, 378, 380, 384, 390, 392, 396, 400, 402, 408, 414, 416, 420, 426, 432, 438, 440, 444, 448, 450, 456, 460, 462, 464, 468, 474, 476, 480, 486, 490, 492, 498, 500, 504, 510, 516, 520, 522, 528, 532, 534, 540, 544, 546, 550, 552, 558, 560, 564, 570, 572, 576, 580, 582, 588, 594, 600, 606, 608, 612, 616, 618, 620, 624, 630, 636, 640, 642, 644, 648, 650, 654, 660, 666, 672, 678, 680, 684, 690, 696, 700, 702, 704, 708, 714, 720, 726, 728, 732, 736, 738, 740, 744, 748, 750, 756, 760, 762, 768, 770, 774, 780, 784, 786, 792, 798, 800, 804, 810, 812, 816, 820, 822, 828, 832, 834, 836, 840, 846, 852, 858, 860, 864, 868, 870, 876, 880, 882, 888, 894, 896, 900, 906, 910, 912, 918, 920, 924, 928, 930, 936, 940, 942, 945, 948, 952, 954, 960, 966, 968, 972, 978, 980, 984, 990, 992, 996, 1000]
		end

		it "abundant number sum" do
			lar.abundant_number_sum_array(12).should == [24]
			lar.abundant_number_sum_array(18).should == [24,30,36]
			lar.abundant_number_sum_array(100).should == [24, 30, 32, 36, 42, 48, 52, 54, 60, 66, 68, 72, 78, 82, 84, 90, 92, 96, 100, 102, 108, 112, 38, 58, 74, 88, 98, 106, 114, 118, 40, 44, 50, 56, 62, 76, 80, 86, 104, 110, 116, 120, 64, 94, 124, 70, 126, 130, 132, 136, 128, 140, 122, 138, 142, 144, 148, 134, 150, 154, 146, 152, 156, 160, 162, 166, 158, 170, 168, 172, 174, 178, 164, 176, 180, 184, 188, 186, 190, 192, 196, 200]
			# lar.abundant_number_sum_array(120/2).should == []
			# lar.abundant_number_sum_array(15000).should == []

			# lar.abundant_number_sum(24).should == [12,12]
			# lar.abundant_number_sum(30).should == [12,18]
		end

		it "abundant_number_sum_check" do
			lar.abundant_number_sum_check(24).should == true
			lar.abundant_number_sum_check(98).should == true
			# lar.abundant_number_sum_check(28124).should == true
			# lar.abundant_number_sum_check(28125).should == true
			# lar.abundant_number_sum_check(32123).should == true
		end

		it "not express abundant_number_sum" do
			# lar.not_abundant_sum(12).should == [1,2,3,4,5,6,7,8,9,10,11,12]
			# lar.not_abundant_sum(36).should == [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 25, 26, 27, 28, 29, 31, 33, 34, 35]
			# lar.not_abundant_sum(28123).should == lar.not_abundant_sum(30000) # true

			# lar.not_abundant_sum_of_sum(28123).should == lar.not_abundant_sum_of_sum(30000)

			lar.not_abundant_sum(28123).should == 4179871
		end

		it "array pair sum" do
			lar.pair_sum([1,2]).should == [2,3,4]
			lar.pair_sum([1,2,3,4,5]).should == [2,3,4,5,6,7,8,9,10]
		end 
	end


	# describe "larger number test" do
	# 	it "divisor sum" do
	# 		lar.divisor_sum(12).should == 16
	# 		lar.divisor_sum(4).should == 3
	# 		lar.divisor_sum(1000).should == 1340
	# 	end

	# 	it "larger number" do
	# 		lar.larger_number(12).should == true
	# 		lar.larger_number(18).should == true
	# 		lar.larger_number(19).should == false
			# lar.larger_numbers(28123).should == []
		# end

		# it "large_number_sum" do
		# 	lar.large_number_sum(10).should == 55
		# 	lar.large_number_sum(12).should == 78
		# 	lar.large_number_sum(28123).should == 78
		# end

		# it "sum check" do
			# lar.sum_check(24).should == true
			# lar.sum_check(28125).should == true
			# lar.sum_check(99).should == false
			# lar.sum_large_arr(28123).should == false
			# lar.sum_large_arr(100).should == false
		# end
	# end
end
