# frozen_string_literal: true

require 'csv'
require_relative 'author'
require_relative 'book'
require_relative 'reader'
require_relative 'order'

# Class that represents Library entity.
class Library
  attr_reader :authors, :books, :readers, :orders

  def initialize(authors: [], books: [], readers: [], orders: [])
    @authors = authors
    @books = books
    @readers = readers
    @orders = orders
  end

  def export_data_from_csv!
    export_authors!
    export_books!
    export_readers!
    export_orders!
  end

  def books_of(author)
    @books.select { |book| book.author == author }
  end

  private

  def export_authors!
    authors_table = CSV.parse(File.read('support/starting-data/authors.csv'), headers: true)
    authors_table&.each do |author_record|
      @authors << Author.new(
        id: author_record['ID'],
        name: author_record['NAME'],
        biography: author_record['BIOGRAPHY']
      )
    end
  end

  def export_books!
    books_table = CSV.parse(File.read('support/starting-data/books.csv'), headers: true)
    books_table&.each do |book_record|
      author = @authors.find { |item| item.id == book_record['AUTHOR_ID'] }
      @books << Book.new(
        id: book_record['ID'],
        title: book_record['TITLE'],
        author: author
      )
    end
  end

  def export_readers!
    readers_table = CSV.parse(File.read('support/starting-data/readers.csv'), headers: true)
    readers_table&.each do |reader_record|
      @readers << Reader.new(
        id: reader_record['ID'],
        name: reader_record['NAME'],
        email: reader_record['EMAIL'],
        city: reader_record['CITY'],
        street: reader_record['STREET'],
        house: reader_record['HOUSE']
      )
    end
  end

  def export_orders!
    orders_table = CSV.parse(File.read('support/starting-data/orders.csv'), headers: true)
    orders_table&.each do |order_record|
      book = @books.find { |item| item.id == order_record['BOOK_ID'] }
      reader = @readers.find { |item| item.id == order_record['READER_ID'] }
      @orders << Order.new(
        id: order_record['ID'],
        book: book,
        reader: reader,
        date: order_record['DATE']
      )
    end
  end
end
