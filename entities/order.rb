# frozen_string_literal: true

# Class that represents Order entity.
class Order
  attr_reader :id, :book, :reader, :date

  def initialize(id:, book:, reader:, date:)
    @id = id
    @book = book
    @reader = reader
    @date = date
  end
end
