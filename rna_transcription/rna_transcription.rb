# ffgdfgd
class Complement
  def self.of_dna(cad)
    h = { 'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U' }
    txt = ''
    cad.each_char do |ltr|
      return txt = '' if h[ltr] == nil
      txt += h[ltr]
    end
    txt
  end
end

module BookKeeping
  VERSION = 4
end
