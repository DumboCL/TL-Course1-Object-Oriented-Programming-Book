# inheritance.rb
# my_car

module Towable
  def can_tow?(pounds)
    pounds < 2000 ? true : false
  end  
end

class Vehicle
  @@number_of_vehicles = 0

  attr_accessor :color, :model, :current_speed
  attr_reader :year

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model

    @current_speed = 0

    @@number_of_vehicles += 1
  end

  def speed_up(number)
    puts "Speed up #{number}"
    self.current_speed += number

    puts "The speed now is #{self.current_speed}"
  end

  def brake(number)
    puts "Brake #{number}"
    self.current_speed -= number

    puts "The speed now is #{self.current_speed}"
  end

  def shut_off
    puts "Shut off!!"
    self.current_speed = 0

    puts "The speed now is #{self.current_speed}"
  end

  def spray_paint(color)
    self.color = color
    puts "The color change to #{self.color}"    
  end

  def self.cal_gas(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end

  def self.number_of_vehicles
    puts "This program has created #{@@number_of_vehicles} vehicles"
    
  end
  
  def age
    "your #{self.model} is #{years_old} years old."
    
  end

  private

  def years_old
    Time.now.year - self.year
    
  end

end

class MyCar < Vehicle

  NUMBER_OF_DOORS = 4

  def to_s
    "My car is a #{self.color}, #{self.year}, #{@model}!"
  end

end

class MyTruck < Vehicle
  include Towable

  NUMBER_OF_DOORS = 2

  def to_s
    "My truck is a #{self.color}, #{self.year}, #{@model}!"
  end

end


MyCar.cal_gas(13, 351)
one_car = MyCar.new(1994,"red","car model")
one_truck = MyTruck.new(2009,"black","truck model")

puts one_car
puts one_truck
puts Vehicle.number_of_vehicles
#puts one_car.can_tow?(2400)
puts one_truck.can_tow?(2400)
puts "-----"
puts Vehicle.ancestors
puts "-----"
puts MyCar.ancestors
puts "-----"
puts MyTruck.ancestors
puts one_car.age
puts one_truck.age
