class Book
  attr_accessor :title, :author

  def initialize(title, author)
    @title = title
    @author = author
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
      puts "'#{book.title}' - #{book.author}"
    end
  end

  def find_books_by_author(author)
    found = @books.select { |book| book.author == author }
    found.each do |book|
      puts "'#{book.title}' - #{book.author}"
    end
  end
end

book1 = Book.new("Война и мир", "Лев Толстой")
book2 = Book.new("Анна Каренина", "Лев Толстой")
book3 = Book.new("Преступление и наказание", "Фёдор Достоевский")
library = Library.new
library.add_book(book1)
library.add_book(book2)
library.add_book(book3)
library.list_books
library.find_books_by_author("Лев Толстой")
