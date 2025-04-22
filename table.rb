def table
  (1..10).each do |row|
    (1..10).each do |col|
      print (row * col).to_s.rjust(4)
    end
    puts
  end
end

table
