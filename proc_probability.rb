arr = (0..10).to_a

def map_with_random_logic(array, proc1, proc2)
  raise ArgumentError, "1st argument must be an array" unless array.is_a?(Array)

  array.map do |num|
    rand(2).zero? ? proc1.call(num) : proc2.call(num)
  end
end

sum = Proc.new { |x| x + 2 }
square = Proc.new { |x| x ** 2 }

res = map_with_random_logic(arr, sum, square)

puts "Исходный массив: #{arr.inspect}"
puts "Измененный массив: #{res}"
