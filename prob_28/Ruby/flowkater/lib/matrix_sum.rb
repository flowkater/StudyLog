# 시계 방향으로 돌면
# 안쪽에서부터 1개 - 8개 - 16개 - 24개.. 8개 차이로 늘어남
# 숫자 증가도
# 1 - 9 - 25 - 49 - .. 8, 16, 24 차이가 8개씩 늘어남
# 1 - 7 - 21 - 43 - .. 6, 14, 22
# 1 - 5 - 17 - 37 - .. 4, 12, 20
# 1 - 3 - 13 - 31 - .. 2, 10, 18
# 공차 d = 8
# 기본 등차 수열 공식 bn = b1 + (n-1)*d
# 증가 등차 수열 공식은 an = a1 + (n-1)*bn-1
# n x n 행렬 최대값 n**2 일때 모서리 네 개의 값은, n**2, n**2 - (n-1), n**2 - 2*(n-1), n**2 - 3*(n-1)
# 즉,
# 5 x 5 행렬 최대값 25, 모서리 네 개의 값은 25, 21, 17, 13
# 7 x 7 행렬 최대값 49, 모서리 네 개의 값은 49, 43, 37, 31
# .
# .
# 1001 x 1001 행렬 최대값 1002001, 모서리 네 개의 값은 [1002001, 1001001, 1000001, 999001]
# 669171001
# 코드 정리 필요

class MatrixSum
	def angle(n)
		[n**2, n**2 - (n-1), n**2 - 2*(n-1), n**2 - 3*(n-1)]
	end

	def seq_general(n, b)
		1 + sum_general(n,b)
	end

	def seq_index(a, b)
		(1..Float::INFINITY).each { |n| return n if seq_general(n, b) == a }
	end

	def sum_general(n, b)
		((n-1) * (2 * b + (n-2)*8)) / 2
	end

	def sum_ele_matrix(n, b)
		(1..n).inject(0){|sum, i| sum + seq_general(i,b)}
	end

	def sum_matrix(n)
		sum_ele_matrix(n, 8) + sum_ele_matrix(n, 6) + sum_ele_matrix(n, 4) + sum_ele_matrix(n, 2) - 3
	end
end