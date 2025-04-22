puts "Введите целое число: "
num = gets.chomp.to_i

def positive?(num)
  return puts "Положительное" if num > 0
  return puts "Отрицательное" if num < 0
  puts "Это ноль"
end

positive?(num)
