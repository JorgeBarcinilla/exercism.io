# sffsfdsds
class Raindrops
  @num = 0

  def self.convert(num)
    @num = num
    text = ''
    multiplos.each do |i|
      case i
      when 3 then text += 'Pling'
      when 5 then text += 'Plang'
      when 7 then text += 'Plong'
      end
    end
    text == '' ? num.to_s : text
  end

  def self.multiplos
    arr = []
    @num.times do |i|
      arr << (i + 1) if @num.modulo((i + 1)).zero?
    end
    arr
  end
end

module BookKeeping
  VERSION = 3
end
