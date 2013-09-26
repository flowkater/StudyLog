class Vernui
	def square_of_sum(n)
		(n * (n+1) / 2)**2
	end

	def sum_of_squares(n)
		n * (n+1) * (2*n+1) / 6
	end

	def gap(n)
		square_of_sum(n) - sum_of_squares(n)
	end
end