primes=[]

def not_prime?(num, primes)
	number=num.to_i
	primes.each do |i|
		if(number%i==0 && number!=i)
			return true
		end
	end
	if (!primes.include?(number) && number!=1)
		primes.push(number)
	end
	return false
end

arr = []

(2..10000).each do |i|
	result = true
	i.to_s.split(//).permutation(i.to_s.length).map {|j| j.join.to_i}.each do |j|
		if(not_prime?(j, primes))
			result = false
		end
	end
	if(result)
		arr.push(i)
		puts i
	end
end


puts "there are " + arr.length.to_s + " numbers that satisfy the condition."
puts "registered prime numbers include " + primes.to_s
