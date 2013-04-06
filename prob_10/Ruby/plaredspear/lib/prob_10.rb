class Prob_10

# 10 이하의 소수를 모두 더하면 2 + 3 + 5 + 7 = 17 이 됩니다.
# 이백만(2,000,000) 이하 소수의 합은 얼마입니까?


  def is_prime?(n)
    
    last_range = Math.sqrt(n)
    (2..last_range).each do |num|
      if (n % num) == 0 then return false end
    end

    true
  end



  # def method

  #   sum = 0;
  #   (2...2000000).each do |num|
  #     sum += num if is_prime?(num)
  #   end

  #   sum
  # end

  def method

    sum = 2000000*(2000000+1)/2;

    (3...2000000).each do |num|
      if !num.odd?
        sum -= num
      elsif num % 3 == 0
        sum -= num
      else
        sum -= num unless is_prime?(num)
      end
    end

    sum
  end




end