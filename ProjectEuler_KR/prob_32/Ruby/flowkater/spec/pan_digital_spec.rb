require 'spec_helper'

class PanDigital
	def pandigital_check(a,b)
		digit = digit(a,b,a*b)
		return false if digit.size != 9
		(1..9).each do |i|
			next if i.to_s == digit[i-1]
			return false
		end
		true
	end

	def digit(a,b,c)
		(a.to_s.split('') + b.to_s.split('') + c.to_s.split('')).sort
	end

	def digit_all_shake_number(n)
		result = []
		(1...10**n).each do |i|
			i_arr = i.to_s.split('')
			next if i_arr.include?("0")
			next if i_arr.size != i_arr.uniq.size
			result << i
		end
		result 
	end	

	def case_number_in_ten
		result = []
		(1..9).each do |n|
			(1..9).each do |i|
				result << [n,i,n+i-1] if n + i + (n+i-1) == 9
			end
		end
		result
	end

	def pandigital_number_sum
		result = []
		digit_all_shake_number(2).each do |i|
			nine_numbers = [1,2,3,4,5,6,7,8,9]
			if i < 10
				nine_numbers.delete(i)
				nine_numbers.permutation(4).to_a.collect{|e| e.join.to_i }.each do |r|
					result << i*r if pandigital_check(i,r)
				end
			else
				nine_numbers.delete(i)
				nine_numbers.permutation(3).to_a.collect{|e| e.join.to_i }.each do |r|
					result << i*r if pandigital_check(i,r)
				end
			end
		end
		result.uniq.inject(:+)
	end
end

describe "Pan Digital" do
	let(:pd){PanDigital.new}

	it "pandigital_check" do
		expect(pd.pandigital_check(39,186)).to eq(true)
	end

	it "digit" do
		expect(pd.digit(39,186,7254)).to eq(["1","2","3","4","5","6","7","8","9"])
	end

	it "case_number_in_ten" do
		expect(pd.case_number_in_ten).to eq([[1, 4, 4], [2, 3, 4], [3, 2, 4], [4, 1, 4]])
	end

	it "digit_all_shake_number" do
		expect(pd.digit_all_shake_number(1)).to eq([1,2,3,4,5,6,7,8,9])
		expect(pd.digit_all_shake_number(2)).not_to include(10)
		expect(pd.digit_all_shake_number(2)).not_to include(11)
		expect(pd.digit_all_shake_number(2)).not_to include(20)
		expect(pd.digit_all_shake_number(2)).not_to include(22)
	end

	it "pandigital_number_sum" do
		expect(pd.pandigital_number_sum).to eq(45228)
		# [[4, 1738, 6952], [4, 1963, 7852], [12, 483, 5796], [18, 297, 5346], [27, 198, 5346], [28, 157, 4396], [39, 186, 7254], [42, 138, 5796], [48, 159, 7632]]
	end
end