class SquareSum
  def test(num)
    num
  end

  # def each_value_square_sum(range)
  #   a = []
  #   (1..range).each do |num|
  #     a << num*num
  #   end
  #   total = 0
  #   a.each do |n|
  #     total += n
  #   end
  #   total
  # end

  # def sum_square(range)
  #   a = 0
  #   (1..range).each do |num|
  #     a += num
  #   end
  #   a*a
  # end


  def each_value_square_sum(range)
    (1..range).inject {|sum, num| sum += num * num }
  end

  def sum_square(range)
    sum = (1..range).inject{ |sum, num| sum += num }
    sum * sum
  end

  def subject(n)
    sum_square(n) - each_value_square_sum(n)
  end
end