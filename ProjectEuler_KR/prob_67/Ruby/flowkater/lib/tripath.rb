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

	def recur_memo_check(x, y)
		unless @memo[[x,y]]
			return @memo[[x,y]] = @testarr[x][y] + recur_memo_check(x-1, y) if y == 0
			return @memo[[x,y]] = @testarr[x][y] + recur_memo_check(x-1, y-1) if @testarr[x].length - 1 == y
			return @memo[[x,y]] = @testarr[x][y] + max(recur_memo_check(x-1, y-1), recur_memo_check(x-1,y))
		end
		@memo[[x,y]]
	end

	def recur_memo_pic
		(0...@testarr.last.length).collect{ |y| recur_memo_check(@testarr.length - 1,y)}.max
	end

	def max(a,b)
		a > b ? a : b
	end
end