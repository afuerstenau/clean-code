all_books = [[1, 'Clean Code'], [4, 'Tokio Killer'], [2, 'Refactoring']]

AVAILABLE = 4

def books_available_for_rent(books)
  available_books = []
  books.each do |book|
    available_books << book[1] if book[0] == AVAILABLE
  end
  available_books
end

puts books_available_for_rent all_books


