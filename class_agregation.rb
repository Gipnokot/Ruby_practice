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

engine = Engine.new("бензиновый", 150)
car = Car.new("Toyota", "Camry", 2020, engine)
puts car.info
