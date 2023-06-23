require_relative 'nameable'

class Person < Nameable
  attr_reader :id, :parent_permission, :rentals
  attr_accessor :name, :age

  def initialize(age, parent_permission, name = "unknown")
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def of_age?
    @age >= 18
  end

  def can_use_services?
    return true if of_age? || @parent_permission
  end

  def correct_name
    @name
  end

  def add_rental(book, date)
    Rental.new(date, book, self)
  end
end
