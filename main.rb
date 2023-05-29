# frozen_string_literal: true

require_relative './entities/library'

library = Library.new

library.export_data_from_csv!
