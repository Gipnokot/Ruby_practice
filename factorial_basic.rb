puts "Введите целое число: "
num = gets.chomp.to_i

def factorial(num)
  return 1 if num == 0
  result = 1
  (1..num).each do |x|
    result *= x
  end
  puts "Факториал числа #{num} равен: #{result}"
end

factorial(num)
