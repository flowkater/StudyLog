class Pibonacci
	def pibonacci_create
		arr = [1, 2]
		(1..4000000).each {|n|((a = arr[n] + arr[n-1]) < 4000000) ? (arr << a) : (return arr)}
	end

	def even_check_sum
		pibonacci_create	.select{|n| n % 2 == 0}.inject(&:+)
	end
end