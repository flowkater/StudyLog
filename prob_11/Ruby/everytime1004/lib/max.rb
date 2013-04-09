class Max

	def make_array(val)
		tmp = val.split(" ").collect{|x| x.to_i}
		arr = []
		tmp_arr = []

		tmp.each_with_index do |val, index|
			tmp_arr << val
			if ("#{index}".to_i+1) % 20 == 0
				arr << tmp_arr 
				tmp_arr = []
			end
		end
		arr
	end

	def horizontal_max(arrs)
		max = 0
		# a = []
		arrs.each_with_index do |arr, index|
			(0..16).each do |i|
				tmp = arr[i] * arr[i+1] * arr[i+2] * arr[i+3]

				max = arr[i] * arr[i+1] * arr[i+2] * arr[i+3] if max < tmp
				# a = [i, index] [10, 8]
			end
		end
		max
	end

	def vertical_max(arrs)
		max = 0
		# a = []
		(0..16).each do |k|
			(0..16).each do |i|
				tmp = arrs[i][k]*arrs[i+1][k]*arrs[i+2][k]*arrs[i+3][k]

				max = tmp if max < tmp
				# a = [i, k] [6, 15]
			end
		end
		max
	end

	def diagonal_right_max(arrs)
		max = 0
		(0..16).each do |k|
			(0..16).each do |i|
				tmp = arrs[i][k] * arrs[i+1][k+1] * arrs[i+2][k+2] * arrs[i+3][k+3]
				max = tmp if max < tmp
			end
		end
		max
	end

	def diagonal_left_max(arrs)
		max = 0
		(1..17).each do |k|
			(1..17).each do |i|
				tmp = arrs[-i][-k] * arrs[-i-1][-k-1] * arrs[-i-2][-k-2] * arrs[-i-3][-k-3]
				max = tmp if max < tmp
			end
		end
		max
	end

	def max(a, b, c, d)
		max_arr = [a, b, c, d]
		max = 0
		max_arr.each do |x|
			max = x if x > max
		end
		max
	end
	
end

