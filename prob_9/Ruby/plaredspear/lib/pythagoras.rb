class Pythagoras

  # def checkPythaNumber(a, b, c)
  #   c**2 == a**2 + b**2
  # end

  # def checkInteger(a)
  #   a.integer?
  # end

  # def pythaNumber
  #   (4..997).each do |a|
  #     ((a+1)..998).each do |b|
  #       c = Math.sqrt(a**2 + b**2)
  #       if (c % 1 == 0 && a+b+c==1000)
  #         return a*b*c.to_i
  #       end
  #     end
  #   end
  # end



  def checkCond(a, b)
    c = Math.sqrt(a**2 + b**2)
    if (c % 1 == 0 && a+b+c==1000)
      return a*b*c.to_i
    end
    nil
  end

  def pythaNumber
    (4..997).each do |a|
      ((a+1)..998).each do |b|
        return checkCond(a, b) if checkCond(a, b) != nil
      end
    end
  end

end