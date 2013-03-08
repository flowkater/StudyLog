class Pibonacci
	def pibonacci_create
		arr = [1, 2]
	  (1..4000000).each do |n|
	  		if arr.last >= 4000000
	  			arr.pop
	  			return arr 
	  		end	
	  		arr << arr[n] + arr[n-1]
	  end
	end

	def even_check
		pibonacci_create	.select{|n| n % 2 == 0}.inject(&:+)
	end
end