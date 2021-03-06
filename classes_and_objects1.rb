# Create a class called MyCar. When you initialize a new instance or object of the class, 
# allow the user to define some instance variables that tell us
# the year, color, and model of the car. 
# Create an instance variable that is set to 0 during instantiation of the object to
# track the current speed of the car as well. 
# Create instance methods that allow the car to speed up, brake, and shut the car off.

# attributes:
#   year, color, model, current_speed = 0

# behavior:
#   -instance methods that brakes, speeds up, and shuts off, spray_paint

class MyCar
  attr_accessor :color, :speed, :mileage
  attr_reader :year, :model 

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @mileage = MyCar.mileage model
    @speed = 0
  end

  def to_s
    "My car is a #{color} #{year} #{model}"
  end

  def self.mileage(make)
    case make
    when "Tempo"     then 29
    when "Celica"    then 23
    when "Impala"    then 13
    when "outlander" then 23
    end
  end

  def brake(speed_decrease)
    @speed -= speed_decrease
  end

  def speed_up(speed_increase)
    @speed += speed_increase
  end

  def shut_off
    self.speed = 0
  end

  def spray_paint(color)
    self.color = color
  end
end

