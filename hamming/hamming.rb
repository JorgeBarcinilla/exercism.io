# Clase para verificar ADN
class Hamming
  def self.compute(cad1, cad2)
    cont = 0
    if cad1.length == cad2.length
      cad1.length.times do |i|
        cont += 1 unless cad1[i] == cad2[i]
      end
    else
      ArgumentError.new('tamaño diferente', 'compute', 1, 1)
    end
    cont
  end
end

module BookKeeping
  VERSION = 3
end
