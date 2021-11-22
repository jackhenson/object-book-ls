# class GoodDog
#   attr_accessor :name, :height, :weight
 
#   def initialize(n, h, w)
#     @name = n
#     @height = h
#     @weight = w
#   end

#   def change_info(n, h, w)
#     self.name = n
#     self.height = h
#     self.weight = w
#   end

#   def info
#     "#{self.name} weights #{self.weight} and is #{self.height} tall."
#   end

#   def speak
#   "#{name} says arf!"
#   end
# end


# fido = GoodDog.new("Fido", '5 ft', '160 lbs')
# puts fido.speak
# puts fido.name
# fido.name=("Joey")
# puts fido.name
# fido.change_info("Tallulah", "6 ft", '180 lbs')
# puts fido.name
# puts fido.height
# puts fido.weight
# puts fido.info

class MyCar
  attr_accessor :color
  attr_reader :year

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
  end

  def speed_up(number)
    @speed += number
    puts "You push the gas and accelerate #{number} mph."
  end

  def brake(number)
    @speed -= number
    puts "You push the brake and decelerate #{number} mph."
  end

  def shut_off
    @speed = 0
    puts "Let's park this bad boy."
  end

  def current_speed
    puts "You are now going #{@speed} mph."
  end  
end

ford = MyCar.new('2010', 'green', 'maverick')
ford.speed_up(10)
ford.current_speed
ford.brake(5)
ford.current_speed
ford.shut_off
ford.current_speed
puts 
puts ford.year
ford.color = 'Black'
puts ford.color

