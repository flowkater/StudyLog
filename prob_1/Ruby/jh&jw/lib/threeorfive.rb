class Threeorfive
	def three_or_five(range)
		((1...range).select {|i| i%3==0 || i%5==0 }).inject(&:+)
	end
end