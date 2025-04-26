class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def greet
    "Привет, меня зовут #{name} и мне #{age} лет"
  end
end

person = Person.new("Иван", 25)
puts person.greet
