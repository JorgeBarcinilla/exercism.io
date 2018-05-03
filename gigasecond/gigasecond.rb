# Clase para calcular
class Gigasecond
  def self.from(date)
    Time.at((date + (10**9)))
  end
end

module BookKeeping
  VERSION = 6
end
