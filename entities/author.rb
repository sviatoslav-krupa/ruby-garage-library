# frozen_string_literal: true

# Class that represents Author entity.
class Author
  attr_reader :id, :name, :biography

  def initialize(id:, name:, biography:)
    @id = id
    @name = name
    @biography = biography
  end
end
