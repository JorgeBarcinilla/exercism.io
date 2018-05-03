# sfsfsdf
class Grains
  def self.square(sqre)
    ArgumentError.new('index negative', 'square', 1, 1) if sqre < 1 || sqre > 64
    num = 1
    (sqre - 1).times do
      num *= 2
    end
    num
  end

  def self.total
    num = 1
    64.times do
      num *= 2
    end
    num - 1
  end
end

module BookKeeping
  VERSION = 1
end
