# 영국의 화폐 단위는 파운드(£)와 펜스(p)이고, 동전의 종류는 아래와 같습니다.

# 1p, 2p, 5p, 10p, 20p, 50p, £1 (100p), £2 (200p)
# 이 동전들을 가지고 2파운드를 만드는 방법은 다양할 것입니다. 예를 하나 들면 이렇습니다.

# 1×£1 + 1×50p + 2×20p + 1×5p + 1×2p + 3×1p
# 2파운드를 만드는 서로 다른 방법은 모두 몇가지나 있습니까?
# 1, 2, 5, 10, 20, 50, 100, 200
# 200 ?
# 점화식을 찾아내라.
class EnglandMoney
	def test_value
		1*100 + 1*50 + 2*20 + 1*5 + 1*2 + 3*1
	end

	def just_all_loop
		count = 0
		(0..1).each do |p2|
			(0..2).each do |p1|
				(0..4).each do |f50|
					(0..10).each do |f20|
						(0..20).each do |f10|
							(0..40).each do |f5|
								(0..100).each do |f2|
									(0..200).each do |f1|
										sum = f1 * 1 + f2 * 2 + f5 * 5 + f10 * 10 + f20 * 20 + f50 * 50 + p1 * 100 + p2 * 200
										if sum == 200
											count += 1
										end
									end
								end
							end
						end
					end
				end
			end
		end
		count
	end
end