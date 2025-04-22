puts "Введите число от 0 до 100: "
num = gets.chomp.to_i


def grade(num)
  return "Ошибка: введите число от 0 до 100" if num < 0 || num > 100
    case num
    when 0..59
      puts "F"
    when 60..69
      puts "D"
    when 70..79
      puts "C"
    when 80..89
      puts "B"
    when 90..100
      puts "A"
    end
end

puts grade(num)
