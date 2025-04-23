puts "Введите строку: "
str = gets.chomp

puts "Введите целое число: "
times = gets.chomp.to_i

times = times == 0 ? 2 : times

def repeat(str, times = 2)
  return nil unless str.is_a?(String) && times.is_a?(Integer)
  str * times
end

puts repeat(str, times)
