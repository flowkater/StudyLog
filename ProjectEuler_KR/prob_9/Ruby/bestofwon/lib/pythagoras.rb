class Pythagoras
	def check_pythagoras(a, b, c) 
		# arr = [a, b, c]
		# if arr.select {|x| x !=arr.max}.collect{|x| x^2}.inject(:+) == arr.max^2
		if a**2 + b**2 == c**2 
			true
		else
			false
		end
	end

	def find_pythagoras(n)
		(2..n).each do |x|
			(x+1..n).each do |y|
				z = n - (x + y)
				if check_pythagoras(x, y, z)
					return [x, y, z]
				end
			end
		end
	end

	def result(n)
		find_pythagoras(n).inject(:*)
	end

end