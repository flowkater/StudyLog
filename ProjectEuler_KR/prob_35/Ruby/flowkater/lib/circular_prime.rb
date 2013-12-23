class CircularPrime
	# sec 7.33
	def is_prime?(n)
		(2..Math.sqrt(n)).each {|i| return false if n % i == 0 }
		true
	end

	def circular_numbers(n)
		# result = []
		arr = n.to_s.split('')
		arr.length.times.collect {|i| arr.rotate!.join.to_i}
		# arr.length.times do
		# 	# arr.rotate!
		# 	result << arr.rotate!.join.to_i
		# 	# tmp = arr[0]
		# 	# arr.each_with_index { |v, i|arr[i] = arr[i+1] }
		# 	# arr[arr.length - 1] = tmp
		# 	# result << arr.join.to_i
		# end
		# result
	end

	# [2,4,5,6,8,0] 
	def is_circular_prime(n)
		n.to_s.split('').each {|s| return false if [2,4,5,6,8,0].include?(s.to_i)}
		circular_numbers(n).each {|i|  return false unless is_prime?(i)}
		true
	end

	def is_circular_prime_in_range(n)
		(2..n).select { |i| is_circular_prime(i)}.unshift(2,5).length
	end
end