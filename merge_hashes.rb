hash1 = { a: 1, b: 2 }
hash2 = { b: 3, c: 4 }

def merge_hashes(hash1, hash2)
  hash1.merge(hash2)
end

p merge_hashes(hash1, hash2)
