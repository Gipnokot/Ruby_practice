hash = { a: 2, b: 3, c: 4, d: 5 }

def even_keys(hash)
  return [] if hash.empty?
  hash.select { |key, value| value.even? }.keys
end

p even_keys(hash)
