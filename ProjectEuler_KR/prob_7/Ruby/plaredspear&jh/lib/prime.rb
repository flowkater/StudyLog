class Prime


  # def is_prime?(n)

  #   if (n==1) then return false end

  #   (2..Math.sqrt(n)).each do |num|
  #     if (n % num) == 0 then return false end
  #   end

  #   true
  # end

  def is_prime?(start, n)
    
    last_range = Math.sqrt(n)
    (2..last_range).each do |num|
      if (n % num) == 0 then return false end
    end
    
    true
  end



  # def count(n)
  #   count = 0
  #   (2..Float::INFINITY).each do |num|
  #     count += 1 if is_prime?(num)
  #     return num if count == n
  #   end
  # end

  # 1.63 sec in MacBook Pro 13



  def count(n)
    count = 0
    last_prime = 2
    (2..Float::INFINITY).each do |num|
      if is_prime?(last_prime, num)
        count += 1
        last_prime = num
      end
      return num if count == n
    end
  end

end