require 'pry'

class Instructor
  attr_accessor :name

  @@all = []

  def initialize (name)
  @name = name
  @@all << self
  end
  def self.all
    @@all
  end

  #def initialize (student, test_name, test_status,  instructor)
   # @student = student
    #@test_name = test_name
    #@test_status = test_status
    #@instructor = instructor
    #@@all << self
  #end

  def create_boating_test(student, test_name, test_status)
    BoatingTest.new(student, test_name, test_status, self)
  end 


  def pass_student(student, test_name)
      found_test = BoatingTest.all.find do |b_test|
        (b_test.student == student) && (b_test.test_name == test_name)
      end
        if found_test == nil
          create_boating_test(student, test_name, "passed")
        else
          found_test.test_status = "passed"
        end
  end

  def fail_student(student, test_name)
    found_test = BoatingTest.all.find do |b_test|
      (b_test.student == student) && (b_test.test_name == test_name)
    end
      if found_test == nil
        create_boating_test(student, test_name, "failed")
      else
        found_test.test_status = "failed"
      end
  end

end
