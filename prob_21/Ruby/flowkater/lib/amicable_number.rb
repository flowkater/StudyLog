class AmicableNumber

	def divisor(n)
		arr = [1]
		(2...Math.sqrt(n)).each {|x|arr << x << n / x if n % x == 0}
		arr.inject(&:+)
	end

	def check(a,b)
		divisor(a) == b && divisor(b) == a
	end

	def self_check(n)
		(d_n = divisor(n)) != n && divisor(d_n) == n
	end

	def range_amicable_sum(r)
		(2..r).select{|n| self_check(n) }.inject(&:+)
	end
end