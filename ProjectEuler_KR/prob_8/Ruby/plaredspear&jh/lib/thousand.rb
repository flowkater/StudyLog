class Thousand


  # def multiple(n)
  #   length = n.to_s.length
  #   ans = 1

  #   (1..length).each do |num|
  #     ans *= (n / 10**(num-1)) % 10
  #   end
  #   ans
  # end




  # def quest(n)
  #   length = n.to_s.length - 5
  #   ans = 0
  #   (1..length).each do |num|
  #     temp = multiple((n / 10**(num-1)) % 100000)
  #     ans = temp if ans < temp
  #   end

  #   ans

  # end



  def multiple(n)
    (1..5).inject(1) {|ans, num| ans *= n % 10; n /= 10; ans }
  end

  def quest(n)
    length = n.to_s.length-5
    (1..length).inject(0) { |ans, num| ans = (multiple(n % 100000)>ans ? multiple(n % 100000) : ans); n /= 10; ans }
  end


end