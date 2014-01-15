require 'fiber'

module PrimeGenerator
  def self.get_generetor(start_number = 2)
    return Fiber.new do
      (start_number..Float::INFINITY).lazy.each do |n|
        Fiber.yield n if n.is_prime?
      end
    end
  end
end

