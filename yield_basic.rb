def each_word(string)
  raise ArgumentError, "Argument must be a non-empty string" unless string.is_a?(String) && !string.strip.empty?

  if block_given?
    string.split.each do |word|
      yield(word)
    end
  else
    puts "No block given"
  end
end

each_word("Hello great world") { |word| puts word.upcase }
