class Digit
	def fifteen_check
		(2 ** 15).to_s.split('').collect{|s| s.to_i}.inject(:+)
	end

	def digit_sum(n)
		(2 ** n).to_s.split(//).collect(&:to_i).inject(:+)
	end
end