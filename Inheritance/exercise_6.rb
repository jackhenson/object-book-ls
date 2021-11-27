module Towable
  def can_tow?(lbs)
    lbs > 2000 ? false : true
  end
end

class Vehicle
  attr_accessor :year, :color, :model, :speed

  @@number_of_vehicles = 0

  def initialize(year, color, model)
    self.year = year
    self.color = color
    self.model = model
    self.speed = 0
    @@number_of_vehicles += 1
  end

  def self.how_many_vehicles
    puts "There are #{@@number_of_vehicles} vehicles."
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles/gallons} miles per gallon of gas"
  end

  def to_s
    "This vehicle is a #{year} #{model} in the color #{color}"
  end

  def spray_paint(c)
    self.color = c
    puts "The #{model} is now painted #{color}."
  end

  def speed_up(number)
    self.speed += number
    puts "You push the gas and accelerate #{number} mph."
  end

  def brake(number)
    self.speed -= number
    puts "You push the brake and decelerate #{number} mph."
  end

  def shut_off
    self.speed = 0
    puts "Let's park this bad boy."
  end

  def current_speed
    puts "You are now going #{speed} mph."
  end

  def age
    "Your #{self.model} is #{years_old} years old."
  end

  private

  def years_old
    Time.now.year - self.year
  end
end 

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4
end

class MyTruck < Vehicle
  include Towable

  NUMBER_OF_DOORS = 2
end

ford = MyCar.new(2010, 'green', 'maverick')
chevy = MyTruck.new(2019, 'yellow', 'silerado')
MyCar.gas_mileage(13.2, 400)
puts ford
ford.current_speed
puts
puts chevy
chevy.speed_up(5)
chevy.current_speed
puts
Vehicle.how_many_vehicles
puts chevy.can_tow?(2001)
puts
puts chevy.age
puts ford.age