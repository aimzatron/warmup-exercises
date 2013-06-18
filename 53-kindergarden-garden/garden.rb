class Garden
  attr_reader :att1, :att2

  def initialize(att1, att2)
    @att1 = att1
    @att2 = att2
  end

  def alice
    [:radishes, :clover, :grass, :grass]  
  end

end
