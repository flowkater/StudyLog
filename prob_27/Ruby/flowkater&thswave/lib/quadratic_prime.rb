class QuadraticPrime
	def prime_of_euler(n)
		n**2 + n + 41
	end

	def is_prime?(n)
		(2..Math.sqrt(n.abs)).each { |i| return false if n % i == 0 }
		true
	end

	def euler_real_prime?(n)
		is_prime?(prime_of_euler(n))
	end

	def euler_range_prime?(n)
		n.downto(0) {|i| return false unless euler_real_prime?(i)}
		true
	end

	def prime_of_computer(n)
		n**2 - 79*n + 1601
	end

	def computer_prime_test(n)
		n.downto(0) {|i| return false unless is_prime?(prime_of_computer(n))
}
		true
	end

	def prime_count_of_quadratic(a, b)
		(0..Float::INFINITY).inject(0) do |count, i| 
			if is_prime?(quadratic(i,a,b)) 
				count += 1  
			else
				return count
			end
		end
	end

	def quadratic(i,a,b)
		i**2 + a*i + b
	end

	def max_prime_count
		result = []
		(-999..999).each do |a|
			(-999..999).each do |b|
				result << [prime_count_of_quadratic(a, b), a, b]
			end
		end
		result.max
	end

	def max_multiply
		max_arr = max_prime_count
		max_arr.pop * max_arr.pop
	end
end