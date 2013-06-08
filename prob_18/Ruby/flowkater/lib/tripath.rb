class Tripath

	attr_accessor :testarr, :memo

	def initialize(filename, testarr = [], memo = {})

		@testarr = testarr
		@memo = memo

		File.open("./lib/#{filename}", 'r') do |f|
			while line = f.gets
				@testarr << line.split.collect { |s| s.to_i }
			end
		end

		@memo[[0,0]] = @testarr[0][0]
	end

	def recur_check(x, y)
		# if x == 0
		# 	@testarr[0][0]
		# elsif y ==
			
		# puts "(#{x},#{y})"
		return @testarr[0][0] if x == 0
		return @testarr[x][y] + recur_check(x-1, y) if y == 0
		return @testarr[x][y] + recur_check(x-1, y-1) if @testarr[x].length - 1 == y
		return @testarr[x][y] + max(recur_check(x-1, y-1), recur_check(x-1,y))
	end

	def recur_memo_check(x, y)
		if x == 0
			return @memo[[0,0]]
		elsif @memo[[x,y]]
			return @memo[[x,y]]
		else
			if y == 0
				return @memo[[x,y]] = @testarr[x][y] + recur_memo_check(x-1, y)
			elsif @testarr[x].length - 1 == y
				return @memo[[x,y]] = @testarr[x][y] + recur_memo_check(x-1, y-1)
			else
				return @memo[[x,y]] = @testarr[x][y] + max(recur_memo_check(x-1, y-1), recur_memo_check(x-1,y))
			end
		end
	end

	def max(a,b)
		a > b ? a : b
	end

	def recur_pic
		arr = []
		(0...@testarr.last.length).each do |y|
			arr << recur_check(@testarr.length - 1,y)
		end
		arr.max
	end

	def recur_memo_pic
		arr = []
		(0...@testarr.last.length).each do |y|
			arr << recur_memo_check(@testarr.length - 1,y)
		end
		arr.max
	end


=begin
	합이 최대가 되는 경로가 아니라 경로를 
	따라서 큰값만 반환한다는 문제로 잘못이해 풀이
=end
	def step_check
		arr = [@testarr[0][0]]
		p = 0
		@testarr.each_with_index do |tarr, index|
			next if index == 0
			arr << [ tarr[p] , tarr[p + 1] ].max
			p += 1 if arr.last == tarr[p+1]
		end
		arr
	end

	def step_sum
		# step_check.inject(&:+)
		step_check
	end
end