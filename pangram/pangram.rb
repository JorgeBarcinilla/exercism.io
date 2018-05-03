# jdsfjdsf
class Pangram
  def self.pangram?(cad)
    ('a'..'z').each do |i|
      return false unless cad.downcase.include?(i)
    end
    true
  end
end

module BookKeeping
  VERSION = 6
end
