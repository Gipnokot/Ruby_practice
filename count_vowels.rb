def count_vowels(str)
  str.downcase.scan(/[aeiou]/).count
end

puts count_vowels("sdasdasdadqweqfdgfcxvbb")
