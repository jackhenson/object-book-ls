class GoodDog
  DOG_YEARS = 7
  @@number_of_dogs = 0

  attr_accessor :name, :age

  def initialize(n, a)
    self.name = n
    self.age = a * DOG_YEARS
    @@number_of_dogs += 1
  end
  
  def self.total_number_of_dogs
    @@number_of_dogs
  end
end

sparky = GoodDog.new("Sparky", 4)
puts sparky.age
puts sparky




# class GoodDog
#   attr_accessor :name, :height, :weight

#   def initialize(n, h, w)
#     @name = n
#     @height = h
#     @weight = w
#   end

#   def speak
#     "#{name} says arf!"
#   end

#   def change_info(n, h, w)
#     @name = n
#     @height = h
#     @weight = w
#   end

#   def info
#     "#{name} weighs #{weight} and is #{height} tall."
#   end

#   def self.what_am_i
#     "I'm a GoodDog class!"
#   end

# end

# puts GoodDog.what_am_i

