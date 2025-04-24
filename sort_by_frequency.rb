def sort_by_frequency(arr)
  return [] if arr == []

  counts = {}
  arr.each do |el|
    counts[el] = counts[el].to_i + 1
  end

  arr.sort_by { |el| -counts[el] }
end

p sort_by_frequency([ 1, 2, 2, 2, 3, 4, 4, 5, 5, 6, 7 ])
