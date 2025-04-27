def repeat(times)
  unless times.is_a?(Integer) && times.positive?
    raise ArgumentError, "Times must be a positive integer"
  end

  if block_given?
    times.times { yield }
  else
    puts 'No block given'
  end
end

repeat(10) { puts "Hello world!" }
