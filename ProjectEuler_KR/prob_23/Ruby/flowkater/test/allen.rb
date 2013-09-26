def sumdiv( n )
  r = n.even? ? 1..n/2 : 1..n/3
  r.select { |d| (n%d).zero? }.reduce(:+)
end

ub = 28123

ab_even = []
ab_odd = []
(12..ub).each do |n|
  if sumdiv(n) > n
    ab_even << n if n.even?
    ab_odd << n if n.odd?
  end
end

ans = []
(1..ub).each do |x|
  if x.odd?
    ans << x unless ab_odd.any? {|n| ab_even.include?(x-n)}
  else
    ans << x unless ab_odd.any? {|n| ab_odd.include?(x-n)} or ab_even.any? {|n| ab_even.include?(x-n)}
  end
end
p ans.reduce(:+)
