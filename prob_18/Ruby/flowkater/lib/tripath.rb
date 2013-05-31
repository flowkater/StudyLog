class Tripath
	attr_accessor :testarr

	def initialize(filename, testarr = [])

		@testarr = testarr

		File.open("./lib/#{filename}", 'r') do |f|
			while line = f.gets
				@testarr << line.split.collect { |s| s.to_i }
			end
		end
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