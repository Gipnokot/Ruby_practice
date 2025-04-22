  def greeting
    puts 'Введите свое имя: '
    name = gets.chomp
    puts "Приветствую, #{name}!"
    name # надо вернуть name, чтобы извне этой функции можно было использовать это значение
  end

  greeting
