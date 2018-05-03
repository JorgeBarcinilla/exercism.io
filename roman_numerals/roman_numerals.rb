# Clase para modificar el objeto entero
class Integer
  def to_roman
    equ = { 'M' => 1000, 'D' => 500, 'C' => 100, 'L' => 50, 'X' => 10, 'V' => 5, 'I' => 1, 'CM' => 900, 'CD' => 400, 'XC' => 90, 'XL' => 40, 'IX' => 9, 'IV' => 4 }
    rom = ''
    num = self
    while num > 0
      res = convert(num)
      num -= equ[res]
      rom += res
    end
    rom
  end

  def convert(num)
    case num
    when 1000..3000 then 'M'
    when 500..899 then 'D'
    when 100..399 then 'C'
    when 50..89 then 'L'
    when 10..39 then 'X'
    when 5..8 then 'V'
    when 1..3 then 'I'
    else sp_convert(num)
    end
  end

  def sp_convert(num)
    case num
    when 900..999 then 'CM'
    when 400..499 then 'CD'
    when 90..99 then 'XC'
    when 40..49 then 'XL'
    when 9 then 'IX'
    when 4 then 'IV'
    end
  end
end

module BookKeeping
  VERSION = 2
end
