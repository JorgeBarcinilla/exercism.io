# asfssdf
class Squares
  @num = 0

  def initialize(num)
    @num = num
  end

  def square_of_sum
    b = 0
    @num.times do |i|
      b += (i + 1)
    end
    b**2
  end

  def sum_of_squares
    b = 0
    @num.times do |i|
      b += ((i + 1)**2)
    end
    b
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

module BookKeeping
  VERSION = 4
end
