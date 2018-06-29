class GoodDog
  attr_accessor :name, :weight, :height

  def initialize(name, weight, height)
    self.name = name
    self.weight = weight
    self.height = height
  end
end

GoodDog.new("Mio", 51, "27 inches")