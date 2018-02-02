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
    @roster.each do |student, grade|
      student.sort!
    end #each iteration
  end #method

end #class
