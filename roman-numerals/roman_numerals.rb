module BookKeeping
  VERSION = 2
end

class Fixnum
  NUMERALS = {
    M: 1000,
    CM: 900,
    D: 500,
    CD: 400,
    C: 100,
    XC: 90,
    L: 50,
    XL: 40,
    X: 10,
    IX: 9,
    V: 5,
    IV: 4,
    I: 1
  }

  def to_roman
    output = []
    number = self
    NUMERALS.each do |k, v|
      if number >= v
        quotient = number / v
        output << "#{k}" * quotient
        number %= v
      end
    end
    output.join("")
  end
end
