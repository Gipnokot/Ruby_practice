puts "Введи строку: "
str = gets.chomp

def palindrome?(str)
  cleaned = str.downcase.gsub(/\s+/, "")
  cleaned == cleaned.reverse
end

puts palindrome?(str)
