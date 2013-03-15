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

		arr = []
		(100...1000).each do |a|
			(100...1000).reverse_each do |b|
				if is_palindrome(a * b)
					arr << a * b 
					break
				end
			end
		end
		arr.sort.last
		# => 5.xx sec
	end

	# X
	def lim
		(100000...1000000).reverse_each do |p|
			return p if is_palindrome(p)
		end
	end
end