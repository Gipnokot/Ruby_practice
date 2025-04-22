def string_length(str)
  count = 0
  str.each_char { |c| count += 1 }
  count
end

puts "Введите любую строку: "
string = gets.chomp
puts "Длина введенной строки: #{string_length(string)} символов"
