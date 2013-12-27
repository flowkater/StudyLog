# encoding: UTF-8
class CircularPrime
	# def initialize
	# 	@primes = erathos_primes(1000000)
	# end

	# sec 7.33
	def is_prime?(n)
		(2..Math.sqrt(n)).each {|i| return false if n % i == 0 }
		true
	end
	# def is_prime?(n)
	# 	@primes.include?(n)
	# end

	def circular_numbers(n)
		# result = []
		arr = n.to_s.split('')
		arr.length.times.collect {|i| arr.rotate!.join.to_i}
		# arr.length.times do
		# 	# arr.rotate!
		# 	result << arr.rotate!.join.to_i
		# 	# tmp = arr[0]
		# 	# arr.each_with_index { |v, i|arr[i] = arr[i+1] }
		# 	# arr[arr.length - 1] = tmp
		# 	# result << arr.join.to_i
		# end
		# result
	end

	# [2,4,5,6,8,0] 
	def is_circular_prime(n)
		n.to_s.split('').each {|s| return false if [2,4,5,6,8,0].include?(s.to_i)}
		circular_numbers(n).each {|i|  return false unless is_prime?(i)}
		true
	end

	def is_circular_prime_in_range(n)
		(2..n).select { |i| is_circular_prime(i)}.unshift(2,5).length
	end

	# 에라토스테네스의 체 고려해서 다시 풀어보자
	def erathos_primes(n)
	  sieve = Array.new( ( n + 1 ) / 2, true) # 반토막 낸다. (홀수만 고려)
	  3.step(Math.sqrt(n).floor, 2) do |i| # 3부터 2step 씩 (3,5,..) 
	      next unless sieve[ i / 2 ] # 홀수만 고려해서 i 가 인덱스를 참조하기 때문에 반토막 낸 모든 배열 인덱스에 접근하기 위해 2를 나눠줌
	                     # 역시 false 이면 next 
	      ( i * 3 / 2 ).step( n / 2, i){ |j| sieve[j] = false} # i의 배수를 모두 false 로 만드는 작업, 2부터 시작하면 짝수를 가리키는데 짝수는 고려하지 않으니 3부터.
	                                   # 역시 반토막 낸 배열에 접근하기 위해서 2를 나눠줌. i 의 배수이기 때문에 step 이 i 만큼 증가.
	  end

	  primes = [2] # 홀수만 고려했기 때문에 2를 배열에 초기화
	  1.upto((n+1)/2) do |i|
	      next unless sieve[i]
	      primes << 2 * i + 1 # true 인 인덱스에 접근해서 원래 인덱스로 변환 (홀수로 변환)
	  end
	  primes
	end
end