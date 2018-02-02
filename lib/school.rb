require 'pry'

class School
  attr_accessor
  attr_reader :grade, :name, :roster

  def initialize(name)
    @name=name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end

  def grade(grade)
    @roster.fetch(grade)
  end

  def sort
    sorted_list = {}
    @roster.each do |student, grade|
      sorted_students = student.sort_by.min
      sorted_list[grade] = sorted_students
    end
    sorted_list
  end #method

end #class
