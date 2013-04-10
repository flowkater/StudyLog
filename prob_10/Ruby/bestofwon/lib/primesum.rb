class Primesum 

	def is_prime?(n)
		(2..Math.sqrt(n)).each { |num| return false if n % num == 0 }
		true
	end
	
	def find_primes_under(n)
		arr = []
		(2..n).each do |x|
			arr << x if is_prime?(x)
		end	
		arr
	end

	# def eratos(n)
	# 	#arr = Array.new(5-1){|x|x+2} => [2, 3, 4, 5]
	# 	arr = Array.new(n-1){|i|i+2}
	# 	arr.each do |x|
	# 		i = 2
	# 		while x * i <= n
	# 			arr.delete(x*i)
	# 			i = i + 1
	# 		end
	# 	end
	# 	arr.inject(:+)
	# end

	#delete메서드 처리량이 너무 많은듯..


	def eratos2(n)
		sum = 0
		#arr = Array.new(3, true) => [true, true, true] 
		arr = Array.new(n, true)
		(2..n).each do |x|
			if arr[x] == true
				sum = sum + x
				i = 2
				while x * i <= n
					arr[x*i] = false
					i = i + 1
				end
			end	
		end
		sum
	end


	def eratos2(n)
		sum = 0
		#arr = Array.new(3, true) => [true, true, true] 
		arr = Array.new(n, true)
		(2..n).each do |x|
			if arr[x] == true
				sum = sum + x
				#리팩토링하고 x**2 < N까지만 체크하기로
				i = 2
				while x * i <= n
					arr[x*i] = false
					i = i + 1
				end
			end	
		end
		sum
	end
end