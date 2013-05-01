module Roman


  def to_roman
    roman_numeral = ''
    self.times do |num|
      roman_numeral += 'I'
    end
    roman_numeral
  end
end

class Fixnum
  include Roman
end
