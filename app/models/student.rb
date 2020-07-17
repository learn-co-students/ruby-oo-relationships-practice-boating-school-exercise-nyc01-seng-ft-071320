require 'pry'

class Student
    attr_reader :first_name
  @@all = []
  
  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(test_name, status, instructor)
    BoatingTest.new(self, test_name, status, instructor)
  end 

  def self.find_student(first_name)
    all.find {|student| student.first_name == first_name}
  end 

  def tests_taken #all the tests the student took
    BoatingTest.all.select {|test| test.student == self}
  end
  
  def passed_tests
    tests_taken.select {|test| test.status == "passed"} 
  end

  def grade_percentage
    #the number of the tests the student passed / the number of all the tests the student took
    grade = (passed_tests.length.to_f / tests_taken.length.to_f) * 100
    grade.round(2)
  end
end

# binding.pry
