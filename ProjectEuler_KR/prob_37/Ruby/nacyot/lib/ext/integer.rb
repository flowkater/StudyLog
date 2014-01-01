class Integer
  def is_prime?
    return false if self == 1
    return true if self == 2
    return false if self % 2 == 0
    return (2..Math.sqrt(self).ceil).all?{|i| self % i != 0}
  end
end
