# frozen_string_literal: true

# Class that represents Library entity.
class Library
  def initialize(books: [], orders: [], readers: [], authors: [])
    @books = books
    @orders = orders
    @readers = readers
    @authors = authors
  end
end
