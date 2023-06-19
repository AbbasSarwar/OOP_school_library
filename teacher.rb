require_relative 'person'

class Teacher < Person
  def initialize(specialization)
    @specialization = specialization
    super(id, age, name, parent_permission)
  end

  def can_use_services?
    true
  end
end
