class Book
  attr_accessor :title, :author, :added_at

  def initialize(title, author, added_at)
    @title = title
    @author = author
    @added_at = Time.now
  end
end

class Library
  def initialize(books = [])
    @books = books.dup
  end

  def add_book(book)
    @books << book
  end

  def list_books
    @books.each do |book|
      puts "'#{book.title}' - #{book.author}, добавлен: #{book.added_at}"
    end
  end

  def sort_books
    @books.sort_by { |book| book.added_at }
  end

  def find_books_by_author(author)
    found = @books.select { |book| book.author == author }
    found.each do |book|
      puts "'#{book.title}' - #{book.author}"
    end
  end

  def remove_book(title)
    @books.delete_if { |book| book.title == title }
  end

  def book_exists?(title)
    book = @books.any? { |book| book.title == title }
  end

  def count_books
    @books.count
  end

  def save_to_file(filename)
    File.open(filename, 'w') do |file|
      @books.each do |book|
        file.puts "#{book.title} - #{book.author}"
      end
    end
  end
end

library = Library.new
library.add_book(Book.new("1984", "Джордж Оруэлл", Time.now))
sleep(1) # чтобы время добавления было разным
library.add_book(Book.new("Мастер и Маргарита", "Михаил Булгаков", Time.now))
library.add_book(Book.new("Преступление и наказание", "Фёдор Достоевский", Time.now))

puts "\nВсе книги (по порядку добавления):"
library.list_books

puts "\nСортировка книг по дате добавления:"
sorted_books = library.sort_books
sorted_books.each { |book| puts "'#{book.title}' - #{book.author}, добавлена: #{book.added_at}" }

library.save_to_file("library_with_dates.txt")
