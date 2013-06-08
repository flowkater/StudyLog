# 윤년 체크해서 1900년도 부터 계속 달마다 더해서 7로 나눠지면 1일 일요일이니깐 그냥 2000년까지 쭉 계산.
# 그리고 1900 년도에 1일 일요일 2번 나와서 2 빼줌.
# 풀고나서 댓글게시판 확인해보니 첼러의 공식, 둠스데이 알고리즘 이란게 있나봄..

class Sunday
	# 1900 1/1 mon

	attr_accessor :week, :month_day

	def initialize
		@week = %w[mon tues thurs wednes fri satur sun]
		@month_day = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
	end

	def sunday_count(y, total_days)
		@month_day[1] = 29 if moon_year(y)
		count = 0
		@month_day.each{|days| count += 1 if (total_days += days) % 7 == 0}
		[count, total_days]
	end

	def century_sunday_count
		count = sunday_count(1900,1)[0]
		total_days = sunday_count(1900,1)[1]

		(1901..2000).each do |y|
			s_count_days = sunday_count(1900,total_days)
			count += s_count_days[0]
			total_days = s_count_days[1]
		end
		count - 2
	end

	def moon_year(y)
		y % 100 == 0 ? y % 400 == 0 : y % 4 == 0
	end
end