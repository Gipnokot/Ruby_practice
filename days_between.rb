require 'date'

def days_between(date1_str, date2_str)
  raise ArgumentError, "Arguments must be a string" unless date1_str.is_a?(String) && date2_str.is_a?(String)

  date1 = Date.parse(date1_str)
  date2 = Date.parse(date2_str)
  (date2 - date1).to_i
end

puts days_between("2025-04-28", "2025-05-05")
