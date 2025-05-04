class Robot; end

commands = {
  greet: "Hi my bro!",
  move: "I'm moving!",
  shutdown: "Shutdown..",
  dance: "I'm dancing"
}

commands.each do |method, message|
  Robot.define_method(method) do
    puts message
  end
end

robot = Robot.new

loop do
  puts "\nВведите команду (#{commands.keys.join(', ')}, или 'exit' для выхода):"
  input = gets.chomp.to_sym
  break if input == :exit

  if robot.respond_to?(input)
    robot.send(input)
  else
    puts "неизвестная команда!"
  end
end
