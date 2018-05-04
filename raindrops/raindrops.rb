# sffsfdsds
class Raindrops
  @equ = { 3 => 'Pling', 5 => 'Plang', 7 => 'Plong' }
  @equ.default = ''

  def self.convert(num)
    text = ''
    num.times do |i|
      text += @equ[(i + 1)] if num.modulo((i + 1)).zero?
    end
    text == '' ? num.to_s : text
  end
end

module BookKeeping
  VERSION = 3
end
