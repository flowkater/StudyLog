class Hailstone

	attr_accessor :memo

	def initialize(memo = Hash.new(0))
		@memo = memo
		@memo[1] = 1
	end

	def count_check(n)
		count = 1
		while n != 1
			if n % 2 == 0 then n /= 2 else n = 3 * n + 1 end
			count += 1
		end
		count
	end

	## 11.86 sec
	def max_count(n)
		max = 0
		result = 0
		(1..n).each do |i|
			count = count_check(i)
			result, max = i, count if max < count
		end
		result
	# 	max = 1
	# 	result = 0
	# 	memo = []
	# 	(2..1_000_000).each do |n|
	# 		count = 1
	# 		memo[n] = n
	# 		b = n
	# 		while memo[n] != 1
	# 			if memo[n].even?
	# 				n = memo[n / 2] = memo[n] / 2
	# 			else
	# 				n = memo[3 * n + 1] = 3 * memo[n] + 1
	# 			end
	# 			count += 1
	# 		end
	# 		result, max = b, count if max < count
	# 	end
	# 	result
	end

	## memoization 
	## 2.7 sec 
	def recur_memo(n, count = 0)
		# if @memo[n] == 0
			# @memo[n] = count + 1
			# if n.even?
			# 	@memo[n] += recur_memo(n / 2, count)
			# else
			# 	@memo[n] += recur_memo(3 * n + 1, count)
			# end
		# end
		# puts "memo[#{n}] : #{@memo[n]}"
		# @memo[n]
		@memo[n] += (n.even? ? recur_memo(n / 2, count) : recur_memo(3 * n + 1, count)) + count + 1 if @memo[n] == 0
		@memo[n]
	end

	def iterate_recur_memo(n, max = 0, result = 0)
		(1..n).each {|i| if max < (rc = recur_memo(i)) then result, max = i, rc end}
		result 
	end


	# allocate array for memo, setting all entries to zero;
	# initialize memo[1] and memo[2] to 1;

	# fib(n) {
	#    if memo[n] is zero:
	#        memo[n] = fib(n-1) + fib(n-2);
	#    return memo[n];
	# }

end