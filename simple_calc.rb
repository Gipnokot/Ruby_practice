def calculator
  puts "Введите первое число: "
  num1 = gets.chomp

  puts "Введите второе число: "
  num2 = gets.chomp

  puts "Введите операцию(+, -, *, /): "
  operation = gets.chomp

  begin
    num1 = Float(num1)
    num2 = Float(num2)
  rescue ArgumentError
    puts "Ошибка! Введите числа."
    return
  end

  result = case operation
  when "+" then num1 + num2
  when "-" then num1 - num2
  when "*" then num1 * num2
  when "/"
    if num2.zero?
      "Ошибка! Деление на ноль"
    else
      num1 / num2
    end
  else
    puts "Ошибка! Неизвестная операция"
  end

  puts "Результат: #{result}"
end

calculator
