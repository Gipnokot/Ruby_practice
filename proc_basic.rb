def format_names(names, formatter)
  raise ArgumentError, "names must be an array" unless names.is_a?(Array)
  names.map { |name| formatter.call(name) }
end

capitalize_proc = Proc.new do |fullname|
  fullname.split.map(&:capitalize).join(" ")
end

input_names = [ "ivan ivanov", "petr petrov", "anna semenovna petrova" ]

p format_names(input_names, capitalize_proc)
