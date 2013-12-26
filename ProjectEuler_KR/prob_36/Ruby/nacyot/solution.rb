#!/usr/bin/ruby

require "./lib/double_base_palindromes.rb"

results = []
(1..1_000_000).each do |n|
  results << n if DoubleBasePalindromes::double_base_palindrome?(n)
end

puts results.to_s
puts results.inject *:+
