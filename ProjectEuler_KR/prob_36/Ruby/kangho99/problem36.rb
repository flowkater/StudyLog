
def bin(num)
	arr=[]
	number=num.to_i
	while number > 0
		arr.push(number%2)
		number=number>>1
	end
	arr.join.to_s.reverse.to_i
end

sum=0

1000000.times do |i|
	if (i==i.to_s.reverse.to_i)
		bini=bin(i)
		if (bini==bini.to_s.reverse.to_i)
			puts "Palindrome " + i.to_s + " " + bini.to_s
			sum+=i
		end
	end
end

puts "Sum is " + sum.to_s
