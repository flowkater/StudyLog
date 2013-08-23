class Quadtree
	def flip(str)
		arr = str.split("")

		until (x_index = last_x_index(arr)) == -1
			arr[x_index, 5] = swap(arr[x_index, 5]).join
		end

		arr.join
	end

	def last_x_index(arr)
		result = -1
		arr.each_with_index {|s, i| result = i if s == "x"} 
		result
	end

	def swap(arr)
		arr[1],arr[3] = arr[3],arr[1]
		arr[2],arr[4] = arr[4],arr[2]
		arr
	end

	# def scanx str
	# 	result = []
	# 	arr = str.split("")
	# 	arr = arr[arr.index("x") + 1, arr.length]

	# 	arr.collect { |s| unless s == "x" then s end  }
	# end

	# def flip(str)
		# arr = str.split("")
		# if (first = arr.shift) != "x"
		# 	return first + arr.join
		# elsif first == "x" and x_n(arr) == 0
		# 	return first + swap(arr[0,4]).join
		# elsif first == "x" and x_n(arr) == 1
		# 	index = 0
		# 	while not arr.length == 4
		# 		if arr[index] == "x"
		# 			arr[index, index+5] = flip(arr[index, arr.length].join)
		# 			# index += 5
		# 		else
		# 			# index += 1
		# 		end
		# 		index += 1
		# 	end
		# 	first + swap(arr).join
		# elsif first == "x" and x_n(arr) == 2
		# 	result = []
		# 	index = 0
		# 	while result.length < 4  
		# 		if arr[index] == "x"
		# 			r = flip(arr[index, arr.length].join)
		# 			result << r[0,5]
		# 			index += 5
		# 		else
		# 			result << arr[index]
		# 			index += 1
		# 		end
		# 	end
		# 	first + swap(result).join
		# end
	# end
end