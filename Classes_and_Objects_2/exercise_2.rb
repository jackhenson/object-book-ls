class MyCar
  attr_accessor :year, :color, :model, :speed

  def initialize(year, color, model)
    self.year = year
    self.color = color
    self.model = model
    self.speed = 0
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles/gallons} miles per gallon of gas"
  end

  def to_s
    "This car is a #{year} #{model} in the color #{color}"
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
end

ford = MyCar.new('2010', 'green', 'maverick')
MyCar.gas_mileage(13.2, 400)
puts ford
ford.current_speed
