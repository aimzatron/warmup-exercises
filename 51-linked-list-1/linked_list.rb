class Element
  def initialize(datum)
    @datum = datum
  end

  attr_accessor :next
  attr_reader :datum
end


def linked_list(values)

  elements = []

  values.each do |value|
    elements.push Element.new(value)
  end

  elements.each_with_index do |element,index|
    element.next = elements[index + 1]
  end
  elements.first
end
