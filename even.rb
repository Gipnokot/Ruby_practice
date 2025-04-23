def even?(num)
  num.is_a?(Numeric) && num % 2 == 0
end

puts even?(5) # -> false
