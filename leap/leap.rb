# asfsfsd
class Year
  def self.leap?(year)
    return false unless year.modulo(4).zero?
    return false unless year.modulo(100) != 0 || year.modulo(400).zero?
    true
  end
end

module BookKeeping
  VERSION = 3
end
