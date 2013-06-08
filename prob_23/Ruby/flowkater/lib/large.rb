# 풀이중.. 풀이를 봐도 이해안가네.. 나중에 다시 푸는게 좋을듯
class Large
	def divisor_sum(n)
		sum = 1
		(2..Math.sqrt(n)).each {|x| sum += x == n / x ? x : x + ( n / x ) if n % x == 0 }
		sum
	end

	def larger_number(n)
		divisor_sum(n) > n
	end

	def large_number_sum(n)
		lnumbers = []
		nums = []
		sum = 0
		(1..n).each do |i|
			if larger_number(i)
				lnumbers << i
				lnumbers.each do |l|
					nums[l+i] = false if l + i < n
				end
			end
			if nums[i] != false
				sum += i 
			end
		end
		sum
	end

	# def larger_numbers(r)
	# 	(1..r).select { |n| divisor_sum(n) > n }
	# end

	# def sum_large_arr(n)
	# 	ln = larger_numbers(n)
		# arr = []
		# ln.each do |i|
		# 	ln.each do |j|
		# 		arr << i + j if !arr.include?(i + j)  && i + j < n
		# 	end
		# end
		# arr
		# last = ln.length - 1
		# i = 0 
		# while i <= last
			# ln[i] + ln[last]
		# end
		# while i <= last
		# 	# puts "#{ln[i]} + #{ln[last]}"
		# 	if ln[i] + ln[last] > n
		# 		last -= 1
		# 	elsif ln[i] + ln[last] < n
		# 		i += 1
		# 	else
		# 		return true
		# 	end
		# end	
		# false
	# end
end