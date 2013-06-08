# 문제 의도는 bigint 인듯? Ruby 는 bigint 그냥 지원..

class Fibo
	attr_accessor :memo
	def initialize
		@memo = []
	end

	def f(n)
		return 1 if n==1 || n==2
		f(n-1) + f(n-2)
	end

	def f_memo(n)
		return 1 if n == 1 || n == 2
		return memo[n] if memo[n]
		memo[n] = f_memo(n-1) + f_memo(n-2)
	end

	def digit_first(r)
		(1..(1.0)/(0.0)).each {|n| return n if f_memo(n).to_s.length >= r}
	end
end