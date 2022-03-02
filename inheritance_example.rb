class Vehicle
  def initialize
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Vehicle
  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  def ring_bell
    puts "Ring ring!"
  end
end

car = Car.new
p car
p car.accelerate 
p car.brake
p car.turn('east')
car.honk_horn

bike = Bike.new
p bike
p bike.accelerate 
p bike.brake
p bike.turn('east')
bike.ring_bell