# dshfgsjdfj
class Prime
  @arr = []
  @num = 1
  @pri = { 7 => true, 5 => true, 3 => true, 2 => true }
  @pri.default = false

  def self.nth(pos)
    while @arr.length < pos
      @num += 1
      if @pri[@num]
        @arr << @num
        next
      end
      next unless prim(@num)
      @arr << @num
    end
    pos.zero? ? ArgumentError.new('pos is 0', 'index', 1, 1) : @arr[pos - 1]
  end

  def self.prim(num)
    return false if num.modulo(2).zero?
    return false if num.modulo(3).zero?
    return false if num.modulo(5).zero?
    return false if num.modulo(7).zero?
    prim_v2(num)
  end

  def self.prim_v2(num)
    @arr.each do |prim|
      return false if num.modulo(prim).zero?
    end
    true
  end
end

module BookKeeping
  VERSION = 1
end
