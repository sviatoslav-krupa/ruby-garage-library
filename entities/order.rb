# frozen_string_literal: true

# Class that represents Order entity.
class Order
  def initialize(book:, reader:, date:)
    @book = book
    @reader = reader
    @date = date
  end
end
