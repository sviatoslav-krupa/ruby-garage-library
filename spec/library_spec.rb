# frozen_string_literal: true

require_relative '../entities/library'

RSpec.describe Library do
  subject(:library) do
    described_class.new(
      authors: [joanne_rowling],
      books: [philosopher_stone, chamber_of_secrets, azkaban_prisoner]
    )
  end

  # Authors
  let(:joanne_rowling) { Author.new(id: 1, name: 'Joanne Rowling', biography: 'British author and philanthropist') }

  # Books
  let(:philosopher_stone) { Book.new(id: 1, title: "Harry Potter and the Philosopher's Stone", author: joanne_rowling) }
  let(:chamber_of_secrets) { Book.new(id: 2, title: 'Harry Potter and the Chamber of Secrets', author: joanne_rowling) }
  let(:azkaban_prisoner) { Book.new(id: 3, title: 'Harry Potter and the Prisoner of Azkaban', author: joanne_rowling) }

  it "returns all author's books" do
    expect(library.books_of(joanne_rowling))
      .to contain_exactly(philosopher_stone, chamber_of_secrets, azkaban_prisoner)
  end

  it 'returns most popular book'

  it 'returns ordered books by reader'
end
