#!/usr/bin/ruby
require 'benchmark'
require './lib/truncable_prime.rb'
require './lib/prime_generator.rb'
require './lib/ext/integer.rb'

results = []

puts Benchmark::CAPTION
report = Benchmark.measure do 
  prime_generator = PrimeGenerator.get_generetor(9)
  while true
    prime = prime_generator.resume
    results << prime if TruncablePrime.is_truncable_prime?(prime)
    break if results.length == 11
  end
end

puts report

puts results
puts "sum:" + results.inject(&:+).to_s
