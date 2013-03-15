class Prime
	def is_prime(n)
		# only if 1, n mod -> True
		# 2 <= d < n
		# Math.sqrt(x)
		# 2 <= d <= Math.sqrt(n)
		(2..Math.sqrt(n)).each do |d|
			return false if n % d == 0
		end
		true
	end

	def find_prime(n)
		answer = []
		(2...Math.sqrt(n)).each do |d|
		  answer << d if n % d == 0 && is_prime(d)
		end
		answer
	end


	def fast_find_prime(n, arr = [])
		return arr.uniq if n == 1
		(2..n).each {|d| return fast_find_prime(n / d, arr << d) if n % d == 0}
	end
end