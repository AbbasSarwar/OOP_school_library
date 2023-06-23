class Rental
  attr_accessor :date, :person, :book

  def initialize(date, book, person)
    @date = date
    @rentals = rentals
    @book = book
    person.rentals << self
  end
end
