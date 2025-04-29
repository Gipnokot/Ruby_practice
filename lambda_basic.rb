arr = [ "cat", "elephant", "dog", "giraffe" ]

def filter_long_words(words, checker)
  raise ArgumentError, "1st argument must be an array" unless words.is_a?(Array)
  raise ArgumentError, "2nd argument must be a lamba" unless checker.lambda?

  words.select { |el| checker.call(el) }
end

check = ->(x) { x.length > 5 }

p filter_long_words(arr, check)
