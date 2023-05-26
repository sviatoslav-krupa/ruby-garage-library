# frozen_string_literal: true

# Class that represents Reader entity.
class Reader
  def initialize(name:, email:, city:, street:, house:)
    @name = name
    @email = email
    @city = city
    @street = street
    @house = house
  end
end
