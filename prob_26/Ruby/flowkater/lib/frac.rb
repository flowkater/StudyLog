# answer: 983 의 자릿수가 982
# 2.95 sec
class Frac
	def divide(n)
		1.0 / n
	end

	# 유클리드 알고리즘 
	# 최대 공약수 구하기
	def gcd(u, v)
		u,v = v,u if u < v 
		(c = u % v) == 0 ? v : gcd(v, c)
	end

	# (n,10) = 1 이라면 순순환소수
	# 아니라면 혼순환소수 또는 유한소수 
	def pure_unlimit_decimal?(n)
		gcd(n, 10) == 1 ? true : false
	end

	# (n,10) != 1 일때 
	# n = 2^a * 5^b * n0 [(n0,10)=1, a,b != 0]
	# 소인수 분해하여 n0가 1이 아니면 혼순환소수 P(a>b?a:b)+ 1 번째 부터 순환소수시작
	# D(1/n) = D(1/n0) [D 는 순환마디 길이]
	# 즉, 분모의 소인수가 10과 서로소인 부분이 순환마디의 길이를 결정
	def unpure_unlimit_decimal?(n)
		return false if pure_unlimit_decimal?(n)
		n = n / 2 while n % 2 == 0
		n = n / 5 while n % 5 == 0

		n == 1 ? false : true
	end

	# 소인수 분해하여 n0 리턴
	def unpure_unlimit_n0(n)
		n = n / 2 while n % 2 == 0
		n = n / 5 while n % 5 == 0
		n
	end

	# 길이를 구해보자
	# 순환소수이거나 혼순환소수일 때
	# 순환소수일때 (n,10) = 1 이므로 
	# n 이 나눠지는 9999~999 꼴의 숫자로 바꾸어서 나눈 자릿수가 길이
	# 혼순환소수일때 소인수 분해하여 10과 서로소인 n0를 구해서 
	# n0 가 나눠지는 9999~999 꼴의 숫자로 바꾸어서 나눈 자릿수가 길이 
	def repeating_decimal_distance(n)
		return nine_convert(n).to_s.length if pure_unlimit_decimal?(n)
		(n0 = unpure_unlimit_n0(n)) != 1 ? nine_convert(n0).to_s.length : 0
	end

	def nine_convert(n)
		(1..Float::INFINITY).inject(9){|sum, i| sum % n == 0 ? (return sum) : sum += 9 * 10**i}
	end

	def longest_repeating_decimal_distance
		(1..1000).inject(1) {|result, i| repeating_decimal_distance(result) < repeating_decimal_distance(i) ? i : result }
	end
end