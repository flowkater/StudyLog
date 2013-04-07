class Lattice

	attr_accessor :array

	def initialize(array = [])
		@array = array

		File.open('./lib/lattice_txt', 'r') do |f|
			while line = f.gets
				@array << line.split.collect { |s| s.to_i }
			end
		end
	end

	def j_plus_max
		arr = []
		(0..19).each {|i| (0..16).each{|j| arr << 0.upto(3).collect { |k| @array[i][j+k] }}}
		arr.collect { |a| a.inject(:*) }.max
		# (0..19).each do |i|
		# 	(0..16).each do |j|
		# 		chunk = []
		# 		0.upto(3) do |k|
		# 			chunk << @array[i][j+k] #unless @array[i][j+3].nil?
		# 		end
		# 		arr << chunk# if chunk.length == 4
		# 	end
		# end
		# arr.collect { |a| a.inject(:*) }.max
	end

	def i_plus_max
		arr = []
		(0..19).each {|j| (0..16).each{|i| arr << 0.upto(3).collect { |k| @array[i+k][j] }}}
		arr.collect { |a| a.inject(:*) }.max
		# (0..19).each do |j|
		# 	(0..16).each do |i|
		# 		chunk = []
		# 		0.upto(3) do |k|
		# 			chunk << @array[i+k][j] #unless @array[i+3][0].nil?
		# 		end
		# 		arr << chunk
		# 	end
		# end
	end

	def i_j_plus_max
		arr = []
		(0..16).each {|i|(0..19).each {|j| arr << 0.upto(3).collect { |k| @array[i+k][j+k] } if @array[i+3][j+3] }}
		arr.collect { |a| a.inject(:*) }.max
	end

	def i_j_minus_max
		arr = []
		(0..16).each { |i|(0..19).reverse_each {|j|arr << 0.upto(3).collect { |k| @array[i+k][j-k] } if @array[i+3][j-3]}}			
		arr.collect { |a| a.inject(:*) }.max
		# @array[0][19] * @array[1][18] * @array[2][17] * @array[3][16]
	end

	def all_max
		[j_plus_max, i_plus_max, i_j_plus_max, i_j_minus_max].max
	end

	# def input_test(s)
		# s.split.length
		# 0.upto(19){|i| 0.upto(19) {|j| print @array[i][j]; puts "" }}
		# s.split.collect { |s|  s.to_i}
	# end
end