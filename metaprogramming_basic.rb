puts "Введите команду: "
command = gets.chomp

class Robot
  def greet
    puts "Hi!"
  end

  def move
    puts "Moved!"
  end

  def shutdown
    puts "Shutdowned!"
  end
end

robot = Robot.new

if Robot.instance_methods.include?(command.to_sym)
  robot.send(command)
else
  puts "Неизвестная команда"
end
