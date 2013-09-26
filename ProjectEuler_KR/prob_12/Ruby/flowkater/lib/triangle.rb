class Triangle
	def sum(n)
		n * (n + 1) / 2
	end

	def divisor(n)
		(1..n).select { |k| n % k == 0 }
	end

	def size(n)
		divisor(n).length
	end

	# def divisor_size_check(n, s)
	# 	arr = []
	# 	(1..n).each do |k|
	# 		arr << k if n % k == 0
	# 		return arr.length if arr.length >= s
	# 	end
	# 	false
	# end

	# 소인수 분해 지수 n + 1

	# def divisor_check_size(s)
	# 	(1..Float::INFINITY).each do |n|
	# 		count = 0
	# 		t = Math.sqrt(sum(n)) # 삼각수
	# 		(1..t).each do |k|
	# 			count += 1 if t % k == 0
	# 		end
	# 		if t * t == sum(n)
	# 			return sum(n) if count * 2 + 1 >= s
	# 		else
	# 			return sum(n) if count * 2 >= s
	# 		end
	# 	end
	# 	# (1..Float::INFINITY).each do |n|
	# 	# 	t = sum(n)
	# 	# 	arr = []
	# 	# 	(1..n).each do |k|
	# 	# 		arr << k if t % k == 0
	# 	# 		return t if arr.length >= s
	# 	# 	end
	# 	# end
	# end


	def factorization(n)
		arr = []
		(2..n).each do |i|
			while n % i == 0
				arr << i
				n = n / i 
				return arr if n == 1
			end
		end
		arr
	end

	def no_division_factor(n)
		(1...Math.sqrt(n)).select{|i| n % i == 0}.length * 2
	end

	def sqrt_bigger(s)
		(1..Float::INFINITY).each do |n|
			t = sum(n)
			return t if no_division_factor(t) >= s
		end
	end

	def number_of_factor(n)
		arr = factorization(n)
		arr.uniq.collect { |i| arr.select{ |e| e == i}.length + 1 }.inject(:*)
	end

	def is_greater_size?(s)
		(1..Float::INFINITY).each do |n|
			t = sum(n)
			return t if number_of_factor(t) >= s if number_of_factor(t)
		end
	end
end