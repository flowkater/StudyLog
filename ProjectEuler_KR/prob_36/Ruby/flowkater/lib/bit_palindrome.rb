class BitPalindrome
	# def bit_convert(n)
	# 	n.to_s(2)
	# end

	# def is_palindrome?(n)
	# 	n.to_s == n.to_s.reverse and n.to_s(2) == n.to_s(2).reverse
	# end

	# def under_sum
	# 	(0..1000000).select {|n| is_palindrome?(n)}.inject(:+)
	# end

	def under_sum
		(0..1000000).select {|n| n.to_s == n.to_s.reverse and n.to_s(2) == n.to_s(2).reverse}.inject(:+)
	end
end