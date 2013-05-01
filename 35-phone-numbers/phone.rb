class Phone
  attr_reader :phone

  def initialize(phone)
    @phone = phone
  end

  def invalid_number
    "0000000000"
  end

  def clean_number
    @phone.gsub(/[^\d]/, '')
  end

  def number
    if clean_number.length < 10 || clean_number.length == 11 && clean_number[0] != "1"
      invalid_number

    elsif clean_number.length == 11 && clean_number[0] == "1"
        clean_number[1..-1] 
    else
      clean_number
    end
  end

  def area_code
    clean_number[0..2]
  end

  def to_s
    "(#{area_code}) #{clean_number[3..5]}-#{clean_number[6..9]}"
  end

end
