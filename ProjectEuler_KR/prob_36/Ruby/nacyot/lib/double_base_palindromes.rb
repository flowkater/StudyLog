class DoubleBasePalindromes
  def self.palindromes?(n)
    n.to_s == n.to_s.reverse
  end

  def self.binary_palindromes?(n)
    n.to_s(2) == n.to_s(2).reverse
  end

  def self.double_base_palindrome?(n)
    palindromes?(n) and binary_palindromes?(n)
  end
end
