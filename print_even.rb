def print_even
  (1..100).each do |num|
    puts "#{num}" if num % 2 == 0
  end
end

print_even
