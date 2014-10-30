# 영국의 화폐 단위는 파운드(£)와 펜스(p)이고, 동전의 종류는 아래와 같습니다.

# 1p, 2p, 5p, 10p, 20p, 50p, £1 (100p), £2 (200p)
# 이 동전들을 가지고 2파운드를 만드는 방법은 다양할 것입니다. 예를 하나 들면 이렇습니다.

# 1×£1 + 1×50p + 2×20p + 1×5p + 1×2p + 3×1p
# 2파운드를 만드는 서로 다른 방법은 모두 몇가지나 있습니까?
# 1, 2, 5, 10, 20, 50, 100, 200
# 200 ?
# 점화식을 찾아내라.
# 736824
class EnglandMoney
	MONEY_OPT = [2,5,10,20,50,100,200]
	SUM = (1..201).collect { |i| 1 }

	# 0.002 초
	def england_money_count_dp
		MONEY_OPT.each{|i|(i..200).each { |j| SUM[j] += SUM[j - i] }}
		SUM[-1]
	end

	MONEY = [200,100,50,20,10,5,2,1]
	# 0.7 초
	def england_money_count(i = 0, sum = 200)
		count = 0
		return count if i == MONEY.length
		(sum / MONEY[i]).downto(0) {|j| (result = MONEY[i] * j) == sum ? count += 1 : count += england_money_count(i+1, sum - result)}
		count
	end
end

e = EnglandMoney.new
puts e.england_money_count_dp