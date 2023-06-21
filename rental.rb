class Rental
  attr_accessor :date
  attr_reader :person, :book

  def initialize(date, book, person)
    @date = date
    @rentals = rentals
    @book = book
    book.rentals = self
    person.rentals = self
  end
end
