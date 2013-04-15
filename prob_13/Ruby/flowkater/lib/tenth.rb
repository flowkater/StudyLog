class Tenth
	## 큰수 계산법으로 다시 접근해야될듯
	attr_accessor :array

	def initialize(array = [])
		@array = array

		File.open('./lib/tenth_txt', 'r') do |f|
			while line = f.gets
				@array << line.to_i 
			end
		end
	end

	def count_test		
		@array.length
	end

	def nine_check
		@array[0].to_s.length
	end

	def all_sum_divideten
		@array.inject(:+).to_s[0, 10]
	end
end


## 잘못된 접근
# @array << line.to_i % 10**9 # 아홉번째 자릿수만 뽑아내서 배열 저장
# 900 
# 1 의 자리의 제일 큰 수인 9를 100개 더하면 900, 
# 즉 1의 자릿수를 더해서 최대한 갈수 있는 자릿수는 3자리
# 9,000
# 90,000
# 900,000
# 9,000,000
# 90,000,000
# 900,000,000
# 9,000,000,000
# 이하 같은 논리로 8의 자리의 제일 큰 수를 100개 더하면
# 최대값이 10자릿수
# 한자릿수 더 큰 9자릿수까지만 더함