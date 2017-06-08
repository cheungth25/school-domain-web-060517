# code here!
class School
  attr_reader :name, :roster
  def initialize(school_name)
    @name = school_name
    @roster = {}
  end
  def add_student(student_name, student_level)
    @roster[student_level] = [] if !@roster[student_level]
    @roster[student_level] << student_name
  end
  def grade(grade_level)
    @roster[grade_level]
  end
  def sort
    @roster.keys.each_with_object({}) do |grade_level, new_hash|
      new_hash[grade_level] = @roster[grade_level].sort
    end
  end
end
