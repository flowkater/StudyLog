class Pythagoras

	def pythagoras?(n)
		(1..n).each do |num|
			(num+1..n).each do |num2|
				c = n - (num+num2)
				if c**2 == (num**2 + num2**2)
					return col = [num, num2, c]
				end
			end
		end
	end

	def pythagoras_sum(n)
		val = pythagoras?(n)
		val.inject(1){|ans, n| ans * n}
	end
end

