  class Say
    attr_reader :numero

    def initialize(numero)
      @numero = numero
    end

    def numbers_to_letters
      %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)
    end

    def digits
      %w(nil one two three four five six seven eight nine)
    end

    def decades
      %w(nil nil twenty thirty forty fifty sixty seventy eighty ninety)
    end

    def in_english
      if numero > 19
        decade = numero / 10
        digit = numero % 10
        if numero % 10 == 0
          "#{decades[decade]}"
        else
          "#{decades[decade]}-#{digits[digit]}"
        end
      else
        numbers_to_letters[numero]
      end
    end
  end
