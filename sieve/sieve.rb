# sfasdfs
class Sieve
  @arr = []

  def initialize(num)
    @arr = (2..num).to_a
  end

  def primes
    @arr.each do |n|
      @arr.delete_if { |i| i > n && (i % n).zero? }
    end
    @arr
  end
end

module BookKeeping
  VERSION = 1
end
