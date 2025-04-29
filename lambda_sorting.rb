arr1 = (0..10).to_a
arr2 = [ "apple", "pear", "banana" ]

def sort_custom(array, sorter = nil)
  raise ArgumentError, "1st argument must be an array" unless array.is_a?(Array)
  return array.dup if array.empty?

  if sorter.nil?
    array.sort
  else
    raise ArgumentError, "2nd argument must be a lambda" unless sorter.lambda?
    array.sort_by(&sorter)
  end
end

sort_desc = ->(x) { -x }
p sort_custom(arr1, sort_desc)

sort_by_length = ->(x) { x.length }
p sort_custom(arr2, sort_by_length)
