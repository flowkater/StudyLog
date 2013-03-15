class Palindrome

	def is_palindrome(n)
		# max_digit = n.to_s.length
		# num = n.to_s.split(//)
		# num2, num3 = [], []
		# (0...max_digit/2).each {|i| num2 << num[i]}
		# num2.reverse!
		# (max_digit/2...max_digit).each {|i| num3 << num[i]}
		# num2	 == num3	
		l = (str = n.to_s.split(//)).length
		str[0...l/2].reverse == str[l/2...l]
	end

	def mult
		# arr = []
		# (100...1000).each do |a|
		# 	(100...1000).each do |b|
		# 		arr << a * b if is_palindrome(a * b)
		# 	end
		# end
		# arr.sort.last
		# => 7.xx sec

		# arr = []
		# (100...1000).each do |a|
		# 	(100...1000).reverse_each do |b|
		# 		if is_palindrome(a * b)
		# 			arr << a * b 
		# 			break
		# 		end
		# 	end
		# end
		# arr.sort.last
		# => 5.xx sec

		# max check
		# result = 0
		# (100...1000).reverse_each do |a|
		# 	(100...1000).reverse_each do |b|
		# 		break if a * b < result # => 요거 추가로 해주니 - 0.6 초
		# 		if a*b > result && is_palindrome(a*b) 
		# 			result = a * b
		# 		end
		# 	end
		# end
		# result
		#
		# max check refactoring
		# 임영수 대표님 아이디어 구현 결과 0.18초~0.19초
		# 굿굿
		result = 0
		(100...1000).reverse_each { |a| (100...1000).reverse_each {|b| break if (n=a * b) < result; result = n if n > result && is_palindrome(n)}}
		result
	end

	# X
	# def lim
	# 	(100000...1000000).reverse_each do |p|
	# 		return p if is_palindrome(p)
	# 	end
	# end
end