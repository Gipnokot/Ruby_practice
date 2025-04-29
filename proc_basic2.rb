arr = [ - 4, -3, -2, -1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ]

def filter_positive(array, condition_proc)
  raise ArgumentError, "First arguments must be an array" unless array.is_a?(Array)

  array.select { |num| condition_proc.call(num) }
end

filter = Proc.new { |x| x.positive? }
p filter_positive(arr, filter)
