# code here!
require "pry"

class School

  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster[grade] == nil #if no grade given exists
      @roster[grade] = []    #create an array within roster hash for grade
    end
      @roster[grade] << name #add students to that array
  end


  def grade(num) #DO not want to use grade as arg here
    @roster[num] #enter a NUMBER and get back that array of students
  end

  def sort
    @roster.each do |num, students| #iterates through the entire roster
      students.sort! #for each array of students, alphabetizes ALL! students
    end
  end


end
