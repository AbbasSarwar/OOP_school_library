require_relative 'person'

class Teacher < Person
  attr_reader :specialization

  def initialize(age, specialization, name = 'unknown', parent_permission: true)
    @specialization = specialization
    super(age, parent_permission, name)
  end

  def can_use_services?
    true
  end
end
