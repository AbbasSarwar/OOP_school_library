require_relative 'person'

class Student < Person
  def initialize(classroom)
    @classroom = classroom
    super(id, age, name, parent_permission)
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end
