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


	# 1. 인수 분해는 소수의 곱으로 표현됨
	# 2. 1부터 10까지의 수는 2,3,5,7로 인수분해됨.
	# 	10으로 나눌 수 있는 수 => 2로 나누어짐 && 5로도 나누어짐
	#   (소수로 나누어질 때 검증이 끝나기 때문에 필터링이 됨)
	# 3. 단, 거듭제곱에 대한 고려가 필요
	# 
	# 
	# K = a^expN * b^expN * c^expN * ... n^expN
	# 					(expN:지수, a^expN = a*a*...*a (expN만큼))
	# K는 거듭제곱된 소수들의 곱이므로,
	#       주어진 문제의 범위에서는 거듭제곱된 소수들중 범위에서 가장 큰 수를 구하면 됨.



	#####################################################

	# def get_divisor(n)
	# 	arr = []

	# 	(2..n).each do |num|
	# 		if is_prime?(num)
	# 			arr << max_exp_in_range(num, n)
	# 		end
	# 	end

	# 	arr.inject(:*)
	# end

	# def max_exp_in_range(n, range)
	# 	max = 1

	# 	(1..range).each do
	# 		if max * n > range
	# 			return max
	# 		else
	# 			max = max * n
	# 		end
	# 	end
	# end

	#####################################################

	# n : 범위
	# 
	def get_divisor(n)
		value = 1
		(2..n).each { |num| value *= max_exp_in_range(num, n) if is_prime?(num) }
		value
	end



	# n : 소수          range : 범위
	# 소수의 거듭제곱 값 중 range 안에 존재하는 가장 큰 수를 리턴함
	def max_exp_in_range(n, range)
		max = 1
		(1..range).each { max * n > range ? break : max *= n }
		max
	end


end