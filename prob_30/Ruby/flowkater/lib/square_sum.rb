# 9**5 * 6 = 354294
# 9**5 * 7 = 413343
# 9**5 * 8 = 472392
# 6자리 상한선 354294
# 7자리 상한선이 6자리라서 자기 자신이 되지 못한다.
# 5.9sec
# 분기한정 가지치기 깊이 탐색?
# 깊이 탐색?
class SquareSum
	MAX = 354294

	def sq_sum(n)
		n.to_s.split("").inject(0){|sum, s| sum + s.to_i**4}
	end

	def sq_n_sum(a,b)
		a.to_s.split("").inject(0){|sum, s| sum + s.to_i**b}
	end

	def check_sq_sum(n)
		(2..MAX).select{|i| i == i.to_s.split("").inject(0){|sum, s| sum + s.to_i**n} }
	end
end