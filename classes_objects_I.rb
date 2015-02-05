# classes_objects_I.rb
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

end

one_car = MyCar.new(1994,"red","I don't know the model")

one_car.speed_up(30)
one_car.brake(10)
one_car.shut_off
one_car.color = "black"
puts "The color now is #{one_car.color}"
puts "The year is #{one_car.year}"
one_car.spray_paint("blue")
