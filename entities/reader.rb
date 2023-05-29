# frozen_string_literal: true

# Class that represents Reader entity.
class Reader
  attr_reader :id, :name, :email, :city, :street, :house

  # rubocop:disable Metrics/ParameterLists
  def initialize(id:, name:, email:, city:, street:, house:)
    @id = id
    @name = name
    @email = email
    @city = city
    @street = street
    @house = house
  end
  # rubocop:enable Metrics/ParameterLists
end
