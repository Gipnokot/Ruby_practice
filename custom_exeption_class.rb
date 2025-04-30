class UnderageError < StandardError
  attr_accessor :name, :age

  def initialize(name, age, message = "Пользователь слишком молод")
    @name = name
    @age = age
    super(message)
  end
end

def register_user(name, age)
  raise ArgumentError, "name must be a string" unless name.is_a?(String)
  raise ArgumentError, "age must be a integer" unless age.is_a?(Integer)
  raise UnderageError.new(name, age) if age < 18

  "Пользователь #{name} успешно зарегистрирован"
end

begin
  puts register_user("Gipnokot", 17)
rescue ArgumentError => e
  puts "Ошибка аргумента: #{e.message}"
rescue UnderageError => e
  puts "#{e.message}: #{e.name}, #{e.age} лет"
end
