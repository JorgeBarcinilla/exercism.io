# ffgdfgd
class Complement
  def self.of_dna(cad)
    cad = cad.split(//)
    h = { 'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U' }
    h.default = ''
    txt = ''
    cad.each do |ltr|
      return txt = '' if h[ltr] == ''
      txt += h[ltr]
    end
    txt
  end
end

module BookKeeping
  VERSION = 4
end
