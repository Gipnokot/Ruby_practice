def find_duplicates(arr)
  return [] if arr == []
  counts = {}
  arr.each do |el|
    counts[el] = counts[el].to_i + 1
  end
  counts.select { |_, count| count > 1 }.keys
end

p find_duplicates([ 1, 2, 3, 3, 4, 4, 5, 5 ])
