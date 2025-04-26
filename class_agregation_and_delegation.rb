class Engine
  attr_accessor :type, :power

  def initialize(type, power)
    @type = type
    @power = power
  end

  def info
    "Тип двигателя: #{type}, мощность: #{power} л.с."
  end
end

class Car
  attr_accessor :brand, :model, :year, :engine

  def initialize(brand, model, year, engine)
    @brand = brand
    @model = model
    @year = year
    @engine = engine
  end

  def info
    "Это #{brand} #{model} #{year} года с двигателем: #{engine.info}"
  end
end

class Garage
  attr_accessor :cars

  def initialize(cars = [])
    @cars = cars.dup
  end

  def add_car(car)
    @cars << car
  end

  def list_cars
    @cars.each do |car|
      puts car.info
    end
  end
end

engine = Engine.new("Бензиновый", 150)
engine2 = Engine.new("Безнзиновый", 180)
car = Car.new("Toyota", "Camry", 2020, engine)
car2 = Car.new("BMW", "X5", 2015, engine2)
garage = Garage.new
garage.add_car(car)
garage.add_car(car2)
garage.list_cars
