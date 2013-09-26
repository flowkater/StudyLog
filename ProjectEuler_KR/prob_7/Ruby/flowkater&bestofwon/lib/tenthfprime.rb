class Tenthfprime
	def is_prime?(n)
		(2..Math.sqrt(n)).each{|x| return false if n % x == 0}
		true	
	end

	def order(n)
		count = 0
		(2..Float::INFINITY).each do |x|
			count = count + 1 if (x % 2 != 0 || x == 2) && is_prime?(x)
			return x if count == n
		end
	end

	def eratos(order)
		arr = []
		result = []
		n = 110000
		(2..n).each{|x| arr[x] = true }

		(2..n).each do |x|
			if arr[x] == true
				result << x
				i = 2
				while x * i <= n
					arr[x*i] = false
					i = i + 1
				end
			end
		end
		result[order - 1]
	end
end