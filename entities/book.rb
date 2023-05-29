# frozen_string_literal: true

# Class that represents Book entity.
class Book
  attr_reader :id, :title, :author

  def initialize(id:, title:, author:)
    @id = id
    @title = title
    @author = author
  end
end
