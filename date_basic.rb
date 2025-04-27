require 'date'

def today_date
  date = Date.today
  date.strftime("%d.%m.%Y")
end

puts today_date
# Пример вывода: "28.04.2025"
