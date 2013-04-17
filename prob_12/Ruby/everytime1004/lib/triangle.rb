class Triangle
	def is_prime?(n)
		return false if n == 1
		(2..Math.sqrt(n)).each{|x| return false if n % x == 0}
		true
	end

	def get_triangle(n)
		(1..n).inject(:+)
	end

	def get_last_index(n)
		index = 0
		n.each do |n|
			index += 1
		end
		index
	end

	def get_divisor_num(n)
		divisor = 2
		arr = [1, 1]
		while true
			if n==1
				return 1 if arr == []
				return arr.inject(:*)
			end
			if n % divisor == 0 && is_prime?(divisor)
				n /=  divisor
				arr << 1 if arr[divisor] == nil
				arr[-1] += 1
			else
				arr << 1
				divisor += 1
			end
		end
	end

	def get_divisor_500
		(0..Float::INFINITY).step(11) do |num|
			next if num == 0
			if get_divisor_num(get_triangle(num)) > 500
				return get_triangle(num)
			end
		end
	end
end