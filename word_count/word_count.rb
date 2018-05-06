#  jfhsdf
class Phrase
  def initialize(phr)
    @phr = phr
    @hsh = {}
  end

  def word_count
    @phr.downcase.split(/ /).each do |cad|
      cad.split(/,/).each do |cad2|
        @hsh[clean(cad2)].nil? ? @hsh[clean(cad2)] = 1 : @hsh[clean(cad2)] += 1
      end
    end
    @hsh
  end

  def clean(cad2)
    cad_aux = ''
    ind = 0
    cad2.each_char do |chr|
      if ind != 0 && ind != cad2.length - 1
        cad_aux += chr if /[\w"'"]/ =~ chr
      else 
        cad_aux += chr if /[\w]/ =~ chr
      end
      ind += 1
    end
    cad_aux
  end
end

module BookKeeping
  VERSION = 1
end
