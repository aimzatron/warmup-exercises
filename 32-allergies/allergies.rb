class Allergies
  attr_reader :score

  def initialize(score)
    @score = score
  end

  def allergens
    ["eggs", "peanuts", "shellfish", "strawberries", "tomatoes", "chocolate", "pollen", "cats"]
  end

  def list
    current_list = []
    allergens.each_with_index do |allergen, index|
      if score & (2 ** index) > 0
        current_list << allergen
      end
    end
    current_list
  end

end
