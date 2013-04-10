class Sieve

  def initialize(numbers)
    @numbers = Array.new << numbers
  end

  def primes
    primes = []
    @numbers.each do |number, digit|
      if number % digit.to_i == 0
        primes << digit
      end
      primes
    end
  end
end
