# 풀이중.. 풀이를 봐도 이해안가네.. 나중에 다시 푸는게 좋을듯 6/8
# 4179871 무식하게 풀었다.sec 20 9/3
# 조합탐색 공부하고 다시 풀어봐야지
class Large
	def real_divisor_sum(n)
		sum = 1
		(2..Math.sqrt(n)).each {|x| sum += x == n / x ? x : x + ( n / x ) if n % x == 0 }
		sum
	end

	# 초과수인지
	def abundant_number(n)
		real_divisor_sum(n) > n
	end

	# n 까지 모든 초과수 배열
	def abundant_number_array_to n
		(2..n).select{|x| abundant_number(x) }
	end

	# n 까지 모든 초과수의 합 배열
	def abundant_number_sum_array(n)
		pair_sum(abundant_number_array_to(n))
	end

	# n 까지 모든 초과수의 합 배열에서 n이 합으로 표현이 되는지
	def abundant_number_sum_check(n)
		abundant_number_sum_array(n/2 + 1000).include? n
	end

	# n 까지 모든 초과수의 합으로 표현이 안되는 수들의 합
	def not_abundant_sum(n)
		arr = abundant_number_sum_array(n)
		(1..n).select{|x| not arr.include? x}.inject(:+)
	end

	# 배열 조합의 합 배열
	def pair_sum(arr)
		index = 0
		result = []
		while arr.length > index
			w_index = index
			while arr.length > w_index
				result << arr[index] + arr[w_index]
				w_index += 1
			end
			index += 1
		end
		result.uniq
	end

	### 조합탐색? GOne 님의 자바스크립트 코드 
	# // 약수들의 합.
	# function sumOfDivisior(n){
	# var sum = 1;
	# for(var i=2; i<=n/i; i++)
	#     if(n%i == 0)  
	#         sum += i + (((n/i))==i?0:(n/i));
	# return sum;
	# }
	# // 두 초과수들의 조합으로 만들 수 없는 수들의 합.
	# function p023(n){
	# var max = (28123>n)?28123:n;

	# var nums = new Array(); //숫자가 두개의 초과수의 합으로 표현 되는지를 판단.
	# var abundant = new Array(); //초과수들을 저장할 배열.
	# var cnt = 0;        //초과수를 count.

	# var sum = 0;
	# for(var i=1; i<max; i++){
	#     if(sumOfDivisior(i) > i){            
	#         abundant[cnt++] = i;        //초과수 저장.
	#         for(var j=0; j<cnt; j++)    //초과수들에 더해주며 초과수의 조합탐색.
	#             if(i+abundant[j] < max)
	#                 nums[i+abundant[j]] = false;
	#     }
	#     if(nums[i] != false)
	#         sum += i;
	# }
	# return sum;
	# }
	###

	# def divisor_sum(n)
	# 	sum = 1
	# 	(2..Math.sqrt(n)).each {|x| sum += x == n / x ? x : x + ( n / x ) if n % x == 0 }
	# 	sum
	# end

	# def larger_number(n)
	# 	divisor_sum(n) > n
	# end

	# def large_number_sum(n)
	# 	lnumbers = []
	# 	nums = []
	# 	sum = 0
	# 	(1..n).each do |i|
	# 		if larger_number(i)
	# 			lnumbers << i
	# 			lnumbers.each do |l|
	# 				nums[l+i] = false if l + i < n
	# 			end
	# 		end
	# 		if nums[i] != false
	# 			sum += i 
	# 		end
	# 	end
	# 	sum
	# end

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