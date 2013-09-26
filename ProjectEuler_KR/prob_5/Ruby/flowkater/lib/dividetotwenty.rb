class Dividetotwenty
	
	# 최대공약수
	def gcd(a,b)
		return a if b == 0
		c = a % b
		gcd(b, c)
	end

	# 최소공배수
	def lcm(a,b)
		(a * b) / gcd(a,b)
	end

	def arr_lcm(n)
		(1..n).inject {|lc,n| lcm(lc, n)}
	end

	# Float::INFINITY -> +1.0/0.0ksms
	# def prime_arr(n)
	# 	arr = []
	# 	(1..n).each do |num|
	# 		if is_prime?(num)
	# 			arr << num
	# 		end
	# 	end
	# 	arr
	# end

	# def divide_to_ten(n)
		# arr = prime_arr(n)
		# arr.each do |x| 
		# 	unless n % x == 0
		# 		return false
		# 	end
		# end
		# true
		# (1..Float::INFINITY).each do |num|
		# 	result = []
		# 	(1..n).each do |x|
		# 		result << num % x
		# 	end
		# 	return num if result.select{|r| r == 0}.length == n
		# end
	# end

	# def is_prime?(n)
	# 	if (n==1) then return false end
	# 	(2..Math.sqrt(n)).each do |num|
	# 		if (n % num) == 0 then return false end
	# 	end
	# 	true
	# end
end