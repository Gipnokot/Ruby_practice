def celsius_to_fahrenheit(c)
  (c * 9.0 / 5) + 32
end

def fahrenheit_to_celsius(f)
  (f - 32) * 5.0 / 9
end

puts "Выберите направление конверсии:"
puts "1. Цельсий в Фаренгейт"
puts "2. Фаренгейт в Цельсий"
print "Ваш выбор (1 или 2): "
choice = gets.chomp

case choice
when "1"
  puts "Введите t в цельсиях: "
  celcius = gets.chomp.to_f
  fahrenheit = celsius_to_fahrenheit(celcius)
  puts "#{celcius}t = #{fahrenheit.round(2)}F"
when "2"
  puts "Введите t в фаренгейтах: "
  fahrenheit = gets.chomp.to_f
  celcius = fahrenheit_to_celsius(fahrenheit)
  puts "#{fahrenheit}F = #{celcius.round(2)}"
else
  puts "Неверный выбор!"
end
