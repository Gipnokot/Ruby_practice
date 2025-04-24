def word_count(str)
  return {} if str.strip.empty?
  arr = str.downcase.split(' ')
  counts = {}
  arr.each do |el|
    counts[el] = counts[el].to_i + 1
  end
  counts
end

p word_count("hello world Hello")
