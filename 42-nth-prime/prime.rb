class Prime

  def self.nth(nth_place)

    if nth_place == 0
      raise ArgumentError
    elsif nth_place == 2
      2
    else
      numbers = (2..104).to_a
      primes = []
      begin
        target = numbers.shift
        primes << target
        numbers.reject! {|i| i % target == 0 }
      end until numbers.empty?
        primes.map.with_index.to_a
          prime_hash[nth_place].to_i
      end
    end
  end

