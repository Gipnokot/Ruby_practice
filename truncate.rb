def truncate(str, length = 10)
  return str if str.length <= length
  str.slice(0, length) + "..."
end

puts truncate("Some string", 10)
