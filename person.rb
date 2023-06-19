class Person
  attr_accessor :name, :age
  attr_reader :id

  def initialize(id, age, name = 'unknown', parent_permission: true)
    @id = id
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def of_age?
    @age >= 18
  end

  def can_use_services?
    @age >= 18 && @parent_permission
  end
end

n1 = Person.new(1, 18, "Abbas")
puts n1.of_age?