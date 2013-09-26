class Lexp
	# 2783915460
	# 15sec
	def permutator(narr)
		return [narr[0]] if narr.length == 1
		result = []
		narr.length.times do |i|
			first = narr.delete(narr[i])
			p = permutator(narr)
			if p.first.is_a? Array and p.length > 1
				p.each{|e| result << e.unshift(first) }
			else
				result << p.unshift(first)		
			end
			
			(narr << first).sort!
		end
		result
	end

	def permutator_find_index(arr, n)
		permutator(arr)[n-1]
	end

	def test(narr)
		result = []
		
		3.times do |i|
			first = narr.delete(narr[i])
			result << first + narr[0] + narr[1] << first + narr[1] + narr[0]
			(narr << first).sort!
		end

		result
	end

	# 루비에서 기본적으로 Permutation, Combination 메서드 제공
	# 허헐.. 12초 정도
	def permutation_test(narr)
		narr.permutation(narr.length).to_a
		# narr.permutation(narr.length).to_a.collect{|e| e.join}
	end
end