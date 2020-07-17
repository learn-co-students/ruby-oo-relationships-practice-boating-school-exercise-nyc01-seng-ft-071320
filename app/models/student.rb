require 'pry'

class Student

  attr_accessor :name

  @@all = []

  def initialize (name)
  @name = name
  @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(test_name, test_status, instructor)
    BoatingTest.new(self, test_name, test_status, instructor)
  end 

  def self.find_student(first_name)
    self.all.find do |student| 
      student.name == first_name
    end
  end

  def find_boating_tests
    BoatingTest.all.select { 
      |test| test.student == self
    }
  end

  def grade_percentage
    passed = 
    total = 
    find_boating_tests
    binding.pry
  end

end
