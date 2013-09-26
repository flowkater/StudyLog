class Dividetotwenty
	# Float::INFINITY -> +1.0/0.0
	def prime_arr(n)
		arr = []
		(1..n).each do |num|
			if is_prime?(num)
				arr << num
			end
		end
		
		arr

	end

	def divide_to_ten(n)
		# arr = prime_arr(n)
		# arr.each do |x| 
		# 	unless n % x == 0
		# 		return false
		# 	end
		# end
		# true
		(1..Float::INFINITY).each do |num|
			result = []
			(1..n).each do |x|
				result << num % x
			end
			return num if result.select{|r| r == 0}.length == n
		end
	end

	def is_prime?(n)

		if (n==1) then return false end

		(2..Math.sqrt(n)).each do |num|
			if (n % num) == 0 then return false end
		end

		true
	end


end