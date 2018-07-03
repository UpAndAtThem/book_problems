# Create a superclass called Vehicle for your MyCar class to inherit from and move the behavior 
# that isn't specific to the MyCar class to the superclass. 
# Create a constant in your MyCar class that stores information about the vehicle that makes 
# it different from other types of Vehicles.

# Then create a new class called MyTruck that inherits from your superclass 
# that also has a constant defined that separates it from the MyCar class in some way.
module HeadLightMotor
  def flip_up
    self.flipped_up = true
  end

  def flip_down
    self.flipped_up = false
  end
end

class Vehicle
  @@fleet = 0

  attr_accessor :color, :speed
  attr_reader :year, :model 

  def initialize(year, color, model)
    @@fleet += 1
    @year = year
    @color = color
    @model = model
    @mileage = MyCar.gas_mileage(23, 230)
    @speed = 0
  end

  def self.gas_mileage(gallons, miles)
    "#{miles / gallons} miles per gallon of gas"
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

class MyCar < Vehicle
  include HeadLightMotor

  DOORS = 4
  CONVERTABLE = false

  attr_accessor :flipped_up

  def initialize(year, color, model)
    super
    self.flipped_up = false
  end

  def to_s
    "My car is a #{color} #{year} #{model}"
  end
end

class MyTruck < Vehicle
  DOORS = 2
  LONGBED = false

  def to_s
    "My truck is a #{color} #{year} #{model}"
  end
end

f_150 = MyTruck.new(2004, "white", "F-150")
probe = MyCar.new(1992, "red", "Probe")

p probe.flip_up
p probe