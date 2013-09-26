class Primesum

	def is_prime?(n)
		return false if n == 1
		(2..Math.sqrt(n)).each{|x| return false if n % x == 0}
		true
	end

	def prime_sum(n)
		(1..n).select{|x| is_prime?(x) }.inject(:+)
	end
	
end

