require_relative 'person'

class Student < Person
  def initialize(classroom)
    @classroom = classroom
    super(id, age, 'unknown', true)
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end
