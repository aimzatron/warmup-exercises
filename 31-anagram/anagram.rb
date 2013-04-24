class Anagram

  def initialize(word)
    @word = word.chars.sort.join
  end

  def match(words)
    @words_hash = words.each_with_object(Hash.new []) do |word, hash|
      hash[word.chars.sort] += [word]
    end
    answer = []
    @words_hash.each_pair do |key, value|
      if key.join == @word
        answer << value
      end
    end
      if answer == []
        []
      else
        answer[0]
      end 
  end
end

