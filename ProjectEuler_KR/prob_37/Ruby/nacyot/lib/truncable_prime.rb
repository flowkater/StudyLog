class TruncablePrime
  def self.find_candidates(n)
    candidates = []
    n_s = n.to_s

    (1..(n_s.length - 1)).each do |i|
      candidates << n_s[i..n_s.length].to_i
    end

    (1..(n_s.length - 1)).each do |i|
      candidates << n_s[0..n_s.length-(i+1)].to_i
    end

    return candidates
  end

  def self.is_truncable_prime?(n)
    return false if [2, 3, 5, 7].include? n
    find_candidates(n).all? {|n| n.is_prime? }
  end
end
