# encoding: UTF-8
# 숫자 145에는 신기한 성질이 있습니다. 각 자릿수의 팩토리얼(계승)을 더하면  1! + 4! + 5! = 1 + 24 + 120 = 145 처럼 자기 자신이 됩니다.
# 이렇게 각 자릿수의 팩토리얼을 더하면 자기 자신이 되는 모든 수의 합을 구하세요.
# 단, 1! = 1 과 2! = 2 의 경우는 덧셈이 아니므로 제외합니다.

class	SelfFactorialSum
	def factorial_sum(n)
		n.to_s.split('').collect {|s| factorial(s.to_i)}.inject {|sum, n| sum += n}
	end

	def factorial(n)
		result = 1
		n.downto(1) {|i| result *= i}
		result 
	end

	def is_factorial_sum(n)
		n == factorial_sum(n)
	end

	def self_digits(n)
		factorial_sum(n).to_s.split('').length
	end

	def is_self_digits(n)
		self_digits(n) == n.to_s.split('').length
	end

	def is_answers
		result = []
		(10..100000).each{|n| result << n if is_factorial_sum(n)}
		result.inject(&:+)
	end
end