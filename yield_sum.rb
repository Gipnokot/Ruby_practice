def sum(a, b)
  raise ArgumentError, "Arguments must be a integer" unless a.is_a?(Integer) && b.is_a?(Integer)

  if block_given?
    yield(a, b)
  else
    puts a + b
  end
end

sum(3, 5) { |a, b| a + b } # Должно вернуть 8
sum(3, 5) # Должно вывести 8
