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
      student.sort!
    end
  end #method

end #class
