def timer
  before = Time.now
  puts "Время до выполнения блока: #{before}"
  yield
  after = Time.now
  duration = (after - before).round(2)
  puts "Время выполнения блока: #{duration} сек."
  duration
end

# Пример использования:
duration = timer { sleep(2) }
puts duration # Должно вывести примерно 2.0 (время в секундах)
