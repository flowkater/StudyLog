class Threeorfive

	def ten_less
		(1...1000).select {|i| i % 3 == 0 || i % 5 == 0}.sort.uniq.inject(&:+)
	end

	def thousand_less
		arr = []
		(1..1000).each do |num|
			arr << num if (num % 3 == 0) || (num % 5 == 0)
		end
	end
end