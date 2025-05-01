class UnderageError < StandardError
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
    super("Пользователь #{name} слишком молод (#{age} лет)")
  end
end

def register_user
  name = nil
  age = nil

  begin
    print "Введите имя: "
    name = gets.chomp
    raise ArgumentError, "Имя не может быть пустым" if name.strip.empty?
  rescue ArgumentError => e
    puts "Ошибка: #{e.message}"
    retry
  end

  begin
    print "Введите возраст: "
    age = Integer(gets.chomp)
  rescue ArgumentError => e
    puts "Ошибка: Введите корректное число. #{e.message}"
    retry
  end

  begin
    raise UnderageError.new(name, age) if age < 18

    File.open("users.txt", "a") do |file|
      file.puts "#{name} - #{age} лет."
    end

    puts "Пользователь #{name} успешно зарегистрирован!"
  rescue UnderageError => e
    puts "Ошибка: #{e.message}"
  ensure
    puts "Попытка регистрации завершена."
  end
end

register_user
