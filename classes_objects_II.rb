# classes_objects_II.rb
# my_car

class MyCar
  attr_accessor :color, :model, :current_speed
  attr_reader :year

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
    
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

  def to_s
    puts "My car is a #{self.color}, #{self.year}, #{@model}!"
  end
end

MyCar.cal_gas(13, 351)
one_car = MyCar.new(1994,"red","I don't know the model")

one_car.speed_up(30)
one_car.brake(10)
one_car.shut_off
one_car.color = "black"
puts "The color now is #{one_car.color}"
puts "The year is #{one_car.year}"
one_car.spray_paint("blue")
puts one_car
