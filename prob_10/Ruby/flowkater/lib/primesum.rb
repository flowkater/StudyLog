class Primesum
	def is_prime?(n)
		return false if n == 1
		(2..Math.sqrt(n)).each{|x| return false if n % x == 0}
		true
	end

	def lessthan_sum(n)
		(1..n).select { |x| x % 2 != 0 && is_prime?(x) }.inject(:+) + 2
	end

	def eratos_sum(n)
		hash = Hash.new
		(3..n).each {|x| hash[x] = true if x % 2 != 0}
		(3..n).each do |x|
			if hash[x]
				(3..Float::INFINITY).each do |i|
					if x * i <= n
						hash.delete_if{|k,v| k == x * i}
					else
						break
					end
				end
			end
		end
		hash.keys.inject(:+) + 2
		# hash.select{|k,v| }
		# arr.select{|x| a == true}.inject(:+) + 2
	end
end