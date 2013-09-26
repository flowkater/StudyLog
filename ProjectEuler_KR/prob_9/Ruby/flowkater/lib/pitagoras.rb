class Pitagoras
	# 피타고라스의 일반해?
	# α=u**2−v**2,β=2uv,γ=u**2+v**2
	# 안씀 //

	def check(a,b,c)
		a**2 + b ** 2 == c ** 2
	end

	# def sum(a,b,c)
		# a + b + c
	# end
	
	def sum_check(a,b,c)
		a + b + c if check(a,b,c)
	end


	def sum_check_arr(v)
		(1..20).each do |a|
			(1..20).each do |b|
				if a < b
					c = Math.sqrt(a ** 2 + b ** 2)
					if x = divisor(v, sum_check(a,b,c))
						return [a*x ,b*x, c*x] 
					end
				end
			end
		end
	end

	# 40은 1000의 약수
	# [8,15,17] 의 합이 40
	# (a + b + c) * k = total
	# 40k = 1000; k = 25
	# [8*k, 15*k, 17*k ]
	# def divisor_test
	# 	x = divisor(1000, sum_check(8,15,17))
	# 	[8*x, 15*x, 17*x]
	# end

	def multiply(v) 
		sum_check_arr(v).inject(&:*)
	end

	def divisor(n, x)
		return false if x == nil
		return n / x if n % x == 0
		false
	end

	# def reverse_sum(v)
		
	# end
end

