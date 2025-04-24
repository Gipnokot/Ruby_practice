def most_frequent(arr)
  return [] if arr == []
  counts = {}
  arr.each do |el|
    counts[el] = counts[el].to_i + 1
  end
  counts.max_by { |key, value| value }[0]
end

p most_frequent([ 1, 1, 2, 2, 2, 3, 3, 3, 4, 5, 6, 6 ])
