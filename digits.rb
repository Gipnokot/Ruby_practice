def digits(num)
  return nil unless num.is_a?(Integer) && num >= 0
    num.to_s.chars.map { |char| char.to_i }
end

p digits(234342342)
