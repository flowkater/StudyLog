# 지수로그 법칙 관련해서 좀 더 수학적으로 접근법 고려해볼 필요가 있음.
# 2중 for문으로 너무 쉽게 답을 구함.
class Combination
	def square(a, b)
		a**b
	end

	def all_square(n)
		result = []
		(2..n).each { |x| (2..n).each { |y| result << square(x,y) } }
		result.uniq.sort
	end

	def all_square_count(n)
		all_square(n).length
	end
end